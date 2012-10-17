#
# Makefile for onex #

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip


# The output zip file of MIUI rom, the default is update.zip if not specified
# local-out-zip-file :=

# All apps from original ZIP, but has smali files chanded
local-modified-apps := HTCCamera SettingsProvider HTCAlbum MediaProvider

local-modified-jars := HTCExtension framework2

local-miui-modified-apps := Phone ThemeManager Mms MiuiHome Settings MiuiGallery MiuiSystemUI
# All apks from MIUI
local-miui-removed-apps  := LatinIME SettingsProvider Stk Bluetooth MediaProvider NetworkLocation


#local-remove-apps := Twitter  
# All apps need to be reserved from original ZIP file
local-phone-apps := ApplicationsProvider BackupRestoreConfirmation Bluetooth BrcmBluetoothServices \
	CertInstaller DefaultContainerService DFPI DrmProvider FilePicker \
	HtcBeatsNotify HTC_IME HTCCamera HtcFMRadio com.htc.FMRadioWidget LiveWallpapers HTMLViewer KeyChain LMW  \
	NetworkLocation NoiseField PluginManager SDCardWizard SharedStorageBackup Stk \
	TrimIt UploadProvider Usage UserDictionaryProvider WifiRouter \
	CustomizationSettingsProvider SettingsProvider HTCAlbum MediaProvider \
	PhaseBeam

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= local-test

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
#	@echo Update boot image
#	cp other/boot.img $(ZIP_DIR)/boot.img

	@echo Update build.prop
	cp other/build.prop $(ZIP_DIR)/system/build.prop

	@echo update bootanimation
	rm $(ZIP_DIR)/system/bin/bootanimation
	cp other/bootanimation $(ZIP_DIR)/system/bin/bootanimation

	@echo add system app
	cp other/system_app/* $(ZIP_DIR)/system/app/

	@echo add system config
	cp other/system_etc/* $(ZIP_DIR)/system/etc/

	@echo add system lib
	cp other/system_lib/* $(ZIP_DIR)/system/lib/

	@echo add spn-conf.xml
	cp other/spn-conf.xml $(ZIP_DIR)/system/etc/spn-conf.xml

#	@echo add mount_lib.sh
#	cp other/mount_lib.sh $(ZIP_DIR)/system/bin/mount_lib.sh

	@echo delete redundance files
	rm -f $(ZIP_DIR)/system/customize/resource/*.png
	rm -rf $(ZIP_DIR)/system/media/weather
	rm -rf $(ZIP_DIR)/system/media/video
	rm -f $(ZIP_DIR)/system/bin/su

local-test:
#	rm -f $(local-out-zip-file)
#	cp .build/$(local-out-zip-file) .
	@echo push $(OUT_ZIP) to phone sdcard
	adb shell mount sdcard
	adb shell rm -f /sdcard/update.zip
	adb push out/update.zip /sdcard/update.zip
