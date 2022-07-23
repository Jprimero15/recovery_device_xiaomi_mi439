#!/system/bin/sh

if dd if=/dev/block/by-name/system bs=256k count=1|strings|grep mi439_dynpart > /dev/null; then
    # Dynamic partitions
    cat /system/etc/recovery.fstab.dynamic >> /system/etc/recovery.fstab
    cat /system/etc/twrp.flags.dynamic >> /system/etc/twrp.flags
else
    # Non Dynamic partitions
    cat /system/etc/twrp.flags.nondynamic >> /system/etc/twrp.flags
fi