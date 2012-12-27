#!/sbin/sh

mkdir -p /system
mkdir -p /system/lib
mount /dev/block/mmcblk0p25 /system
mount /dev/block/mmcblk0p28 /system/lib
if [ $? -eq 0 ]; then
    SIZE=`df | busybox grep "/system/lib" | busybox awk '{print $1}'`
    if [ $SIZE > 102400 ]; then
        echo "the partition is mmcblk0p28 lib, return"
        exit 0
    fi
fi

mount /dev/block/mmcblk0p29 /system/lib
if [ $? -eq 0 ]; then
SIZE=`df | busybox grep "/system/lib" | busybox awk '{print $1}'`
    if [ $SIZE > 102400 ]; then
        echo "the partition mmcblk0p29 is lib, return"
        exit 0
    else
        echo "not find partition"
        exit -1
    fi
fi
echo "not find partition"

