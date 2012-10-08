# ===========================================================================
#  Virtuous ROM Tools (rmk, chrisch)
#
#  $LastChangedDate: 2012-06-02 02:01:54 +0200 (Sat, 02 Jun 2012) $
# ===========================================================================

ROM_NAME="virtuous"

PM="/system/bin/pm"
GETPROP="/system/bin/getprop"
SETPROP="/system/bin/setprop"
LOG="/system/bin/log -t $ROM_NAME "
PACKAGESXML="/data/system/packages.xml"

SYSAPP_DIR="/system/app"
SYSLIB_DIR="/system/lib"
SYSFW_DIR="/system/framework"
SYSBIN_DIR="/system/bin"
SYSXBIN_DIR="/system/xbin"
SYSETC_DIR="/system/etc"
DATAAPP_DIR="/data/app"
DATASYS_DIR="/data/system"

BUSYBOX="/system/xbin/busybox"
BB="$BUSYBOX"
GREP="$BUSYBOX grep"
MOUNT="$BUSYBOX mount"
UMOUNT="$BUSYBOX umount"
MV="$BUSYBOX mv"
CP="$BUSYBOX cp"
RM="$BUSYBOX rm"
RMDIR="$BUSYBOX rmdir"
TEST="$BUSYBOX test"
MKDIR="$BUSYBOX mkdir"
CHMOD="$BUSYBOX chmod"
CHOWN="$BUSYBOX chown"
TOUCH="$BUSYBOX touch"
FSIZE="$BUSYBOX stat -c %s "
BASENAME="$BUSYBOX basename"
CUT="$BUSYBOX cut"
ECHO="$BUSYBOX echo"
SED="$BUSYBOX sed"
LN="$BUSYBOX ln"
LS="$BUSYBOX ls --color=never -1 "
CAT="$BUSYBOX cat"
SLEEP="$BUSYBOX sleep"
SQLITE="$SYSXBIN_DIR/sqlite3"

if $TEST -d "/internal_sdcard"; then
  SDCARD_DIR="/internal_sdcard"
else
  SDCARD_DIR="/sdcard"
fi

VIRTUOUS_INSTALLED="/data/${ROM_NAME}/${ROM_NAME}_installed"
VIRTUOUS_DATA_DIR="/data/${ROM_NAME}"
VIRTUOUS_STATE_DIR="$VIRTUOUS_DATA_DIR/state"
VIRTUOUS_ROOT_DIR="$SDCARD_DIR/${ROM_NAME}"
VIRTUOUS_ROMAPP_DIR="$VIRTUOUS_ROOT_DIR/app.rom"
VIRTUOUS_USERAPP_DIR="$VIRTUOUS_ROOT_DIR/app.user"
VIRTUOUS_EBOOK_DIR="$VIRTUOUS_ROOT_DIR/ebooks"
PACKAGELIST="$VIRTUOUS_DATA_DIR/package_list.txt"
BATTERY_STATE_FILE="$VIRTUOUS_DATA_DIR/battery-calibrated"


is_package_installed() {
    for PACKAGENAME in $* ; do
        if $GREP -q "$PACKAGENAME" $PACKAGESXML ; then
            return 0
        fi
    done
    return 1
}

rm_package_entry_by_apk () {
    APPNAME=$1

    PACKAGENAME=$( $GREP "$APPNAME" "$PACKAGESXML" | $CUT -f2 -d\" )
  
    if $TEST $( $GREP -c "$APPNAME" "$PACKAGESXML" ) -gt 0; then
        $SED -i "/<package.*name=.$PACKAGENAME. .*/,/<\/package>/d" $PACKAGESXML
    fi

    $CHOWN 1000.1000 $PACKAGESXML
    $CHMOD 664 $PACKAGESXML
}


rm_package_entry_by_object () {
    PACKAGENAME=$1
  
    if $TEST $( $GREP -c "$APPNAME" "$PACKAGESXML" ) -gt 0; then
        $SED -i "/<package.*name=.$PACKAGENAME. .*/,/<\/package>/d" $PACKAGESXML
    fi

    $CHOWN 1000.1000 $PACKAGESXML
    $CHMOD 664 $PACKAGESXML
}


remount_system () {
    MOUNTOPTS=$1

    mount -o remount,$MOUNTOPTS /dev/block/mmcblk0p25 /system

    if [ $? -gt 0 ] ; then
        return 0
    else
        return 1
    fi
}


create_state_dirs () {
    $MKDIR -p $DATAAPP_DIR
    $MKDIR -p $DATASYS_DIR

    $CHOWN 1000.1000 /data
    $CHMOD 771 /data
    $CHOWN 1000.1000 $DATAAPP_DIR
    $CHMOD 711 $DATAAPP_DIR

    $MKDIR -p $VIRTUOUS_STATE_DIR
    $MKDIR -p $VIRTUOUS_STATE_DIR/enabled
    $MKDIR -p $VIRTUOUS_STATE_DIR/disabled
    $MKDIR -p $VIRTUOUS_STATE_DIR/autoinstalled
}
