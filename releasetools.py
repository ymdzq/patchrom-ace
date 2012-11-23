import common
import edify_generator

def ReplaceLine(info):
    edify = info.script
    for i in xrange(len(edify.script)):
        if 'set_perm_recursive(0, 2000, 0777, 0755, "/system/xbin");' in edify.script[i]:
            edify.script[i] = 'set_perm_recursive(0, 2000, 0777, 0755, "/system/xbin");\nset_perm_recursive(0, 2000, 0755, 0750, "/system/etc/init.d");\nset_perm(0, 0, 0755, "/system/etc/init.d");'

def FullOTA_InstallEnd(info):
    ReplaceLine(info)

def IncrementalOTA_InstallEnd(info):
    ReplaceLine(info)
