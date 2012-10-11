import common
import edify_generator

def DeleteFormat(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if "format" in edify.script[i] and "/dev/block/mmcblk0p25" in edify.script[i]:
            edify.script[i]="""format("ext4", "EMMC", "/dev/block/mmcblk0p25", "0");"""
        elif "mount" in edify.script[i] and "/dev/block/mmcblk0p25" in edify.script[i]:
            edify.script[i]="""mount("ext4", "EMMC", "/dev/block/mmcblk0p25", "/system");"""
    return

def AddAssertions(info):
    info.script.AppendExtra('set_perm_recursive(0, 2000, 06755, 06755, "/system/xbin");');
    info.script.AppendExtra('set_perm_recursive(0, 2000, 0755, 0750, "/system/etc/init.d");');
    info.script.AppendExtra('set_perm(0, 0, 0755, "/system/etc/init.d");');
    return

def FullOTA_InstallEnd(info):
    DeleteFormat(info)
    AddAssertions(info)

def IncrementalOTA_InstallEnd(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if "mount" in edify.script[i] and "/dev/block/mmcblk0p25" in edify.script[i]:
            edify.script[i]="""mount("ext4", "EMMC", "/dev/block/mmcblk0p25", "/system");"""
    AddAssertions(info)
