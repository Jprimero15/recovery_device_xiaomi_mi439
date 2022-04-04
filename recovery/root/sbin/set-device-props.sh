#!/sbin/sh

set_device_codename() {
	resetprop "ro.build.product" "$1"
	resetprop "ro.omni.device" "$1"
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

case "$(cat /sys/firmware/devicetree/base/model)" in
	"PINE QRD")
		set_device_codename "pine"
		set_device_model "Redmi 7A"
		;;
	"Olive QRD")
		set_device_codename "olives"
		set_device_model "Redmi 8 / 8A / 8A Dual"
		setprop "persist.vendor.ctm.disallowed" "true"
		;;
esac

exit 0
