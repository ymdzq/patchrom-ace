#!/system/bin/sh

#============================================================#
# init.post_boot.sh script created for Android Revolution HD #
# by mike1986                                                #
# Do not try to remove this file from the system!            #
#============================================================#

# Kernel tweaks for MSN7x30 devices (HTC Desire HD, HTC Inspire 4G, HTC Incredible S)
target=`getprop ro.board.platform`
case "$target" in "msm7x30")
	echo "conservative" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
	echo "300000" > /sys/devices/system/cpu/cpu0/cpufreq/conservative/sampling_rate
	echo "90" > /sys/devices/system/cpu/cpu0/cpufreq/conservative/up_threshold
	echo "ondemand" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
	echo "20000" > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/sampling_rate
	echo "1" > /sys/devices/system/cpu/cpufreq/ondemand/io_is_busy
	echo "10" > /sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor
	echo "60" > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/up_threshold
	echo "30" > /sys/devices/system/cpu/cpufreq/ondemand/down_differential
	echo "vr" > /sys/block/mmcblk0/queue/scheduler
	echo "vr" > /sys/block/mmcblk1/queue/scheduler
;;
esac

# Kernel tweaks for MSN8660 devices (HTC Sensation, HTC Sensation 4G, HTC Sensation XE, HTC Evo 3D CDMA, HTC Amaze 4G)
target=`getprop ro.board.platform`
case "$target" in "msm8660")
	echo "conservative" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
	echo "conservative" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
	echo "300000" > /sys/devices/system/cpu/cpufreq/conservative/sampling_rate
	chgrp root /sys/devices/system/cpu/cpufreq/conservative/sampling_rate
	chmod 664 /sys/devices/system/cpu/cpufreq/conservative/sampling_rate
	echo "90" > /sys/devices/system/cpu/cpufreq/conservative/up_threshold
	echo "ondemand" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
	echo "ondemand" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
	echo "20000" > /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate
	chgrp root /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate
	chmod 664 /sys/devices/system/cpu/cpufreq/ondemand/sampling_rate
	echo "60" > /sys/devices/system/cpu/cpufreq/ondemand/up_threshold
	echo "1" > /sys/devices/system/cpu/cpufreq/ondemand/io_is_busy
	echo "10" > /sys/devices/system/cpu/cpufreq/ondemand/sampling_down_factor
	echo "30" > /sys/devices/system/cpu/cpufreq/ondemand/down_differential
	echo "384000" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
	echo "384000" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
	chgrp root /sys/devices/system/cpu/cpu0/online
	chgrp root /sys/devices/system/cpu/cpu1/online
	echo "deadline" > /sys/block/mmcblk0/queue/scheduler
	echo "deadline" > /sys/block/mmcblk1/queue/scheduler

# Tweak IntelliDemand governor by faux123 (kernel must include this governor!)
if [`grep -q intellidemand /sys/devices/system/cpu/cpu0/cpufreq/scaling_available_governors`] ; then
$LOG -p i "Configuring intellidemand governor"
	echo "intellidemand" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
	echo "intellidemand" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
	echo "20000" > /sys/devices/system/cpu/cpufreq/intellidemand/sampling_rate
	chgrp root /sys/devices/system/cpu/cpufreq/intellidemand/sampling_rate
	chmod 664 /sys/devices/system/cpu/cpufreq/intellidemand/sampling_rate
	echo "60" > /sys/devices/system/cpu/cpufreq/intellidemand/up_threshold
$LOG -p i "Intellidemand governor tweaked"
fi

# Enable ZRAM compressed memory (kernel must support ZRAM feature!)
if [ -e /sys/block/zram0/disksize ] ; then
	$LOG -p i "Enabling compressed RAM functionality (ZRAM)"
	echo $((120*1024*1024)) > /sys/block/zram0/disksize
	busybox mkswap /dev/block/zram0
	busybox swapon /dev/block/zram0
fi
;;
esac
# Kernel tweaks for nVidia Tegra 2 devices (Asus Eee Pad Transformer)
target=`getprop ro.product.device`
case "$target" in "TF101")
	echo "216000" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
	echo "216000" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
	echo "1000000" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
	echo "1000000" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
	echo "interactive" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
	echo "interactive" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
	echo "60" > /sys/devices/system/cpu/cpufreq/interactive/go_maxspeed_load
	echo "40000" > /sys/devices/system/cpu/cpufreq/interactive/min_sample_time
	echo "deadline" > /sys/block/mmcblk0/queue/scheduler
	echo "deadline" > /sys/block/mmcblk1/queue/scheduler
;;
esac

# Kernel tweaks for TI OMAP 4460 devices (Samsung Galaxy Nexus GSM, Samsung Galaxy Nexus LTE)
target=`getprop ro.board.platform`
case "$target" in "omap4")
	echo "interactive" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
	echo "interactive" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
	echo "40000" > /sys/devices/system/cpu/cpufreq/interactive/min_sample_time
	echo "20000" > /sys/devices/system/cpu/cpufreq/interactive/timer_rate
	echo "60" > /sys/devices/system/cpu/cpufreq/interactive/go_hispeed_load
	echo "920000" > /sys/devices/system/cpu/cpufreq/interactive/hispeed_freq
	echo "deadline" > /sys/block/mmcblk0/queue/scheduler
;;
esac

# Kernel tweaks for nVidia Tegra 3 devices (HTC One X)
target=`getprop ro.product.device`
case "$target" in "endeavoru")
	# Governors settings are stored in init.endeavoru.common.rc
	echo "noop" > /sys/block/mmcblk0/queue/scheduler
;;
esac

target=`getprop ro.ident`
case "$target" in "Android_Revolution_HD")
# Kernel global tweaks
	#mount -t debugfs none /sys/kernel/debug
	#echo "NO_NORMALIZED_SLEEPER" > /sys/kernel/debug/sched_features
	#echo "NO_NEW_FAIR_SLEEPERS" > /sys/kernel/debug/sched_features
	#umount /sys/kernel/debug
	echo "0" > /proc/sys/kernel/panic_on_oops

# Virtual Memory tweaks
	echo "0" > /proc/sys/vm/panic_on_oom
	echo "0" > /proc/sys/vm/oom_kill_allocating_task

# Increase readahead buffers on eMMC devices
	echo "1024" > /sys/block/mmcblk0/bdi/read_ahead_kb
	echo "1024" > /sys/block/mmcblk1/bdi/read_ahead_kb

# Execute /system/etc/init.d scripts on boot
	sysrw
	chgrp -R 2000 /system/etc/init.d
	chmod -R 777 /system/etc/init.d
	sysro
	/system/xbin/busybox run-parts /system/etc/init.d
;;
esac

# End of the init.post_boot.sh script

