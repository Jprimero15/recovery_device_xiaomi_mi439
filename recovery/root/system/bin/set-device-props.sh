#!/system/bin/sh

set_device_codename() {
	resetprop "ro.build.product" "$1"
	resetprop "ro.product.device" "$1"
	for i in odm product system system_ext vendor; do
		resetprop "ro.product.${i}.device" "$1"
	done
}

set_device_model() {
	resetprop "ro.product.model" "$1"
	for i in odm product system system_ext vendor; do
		resetprop "ro.product.${i}.model" "$1"
	done
}

set_device_codename "$(cat /sys/xiaomi-sdm439-mach/codename)"
set_device_model "$(cat /sys/xiaomi-sdm439-mach/product_name)"

case "$(cat /sys/xiaomi-sdm439-mach/codename)" in
	"pine")
		for i in x y w h; do
			setprop twrp.gui.offset.${i} 0
		done
		;;
	"olive"|"olivelite"|"olivewood")
		setprop "persist.vendor.ctm.disallowed" "true"
		;;
esac

exit 0
