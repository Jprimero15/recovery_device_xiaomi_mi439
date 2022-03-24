#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2022 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#
	export TW_DEFAULT_LANGUAGE="en"
	export LC_ALL="C"
	export ALLOW_MISSING_DEPENDENCIES=true

        # Device Tree Path | Include Path
        export DEVICE_PATH="device/xiaomi/olive"
        export INCLUDE_PATH="$DEVICE_PATH/include"

	export OF_KEEP_FORCED_ENCRYPTION=1
	export OF_PATCH_AVB20=1
	export OF_USE_MAGISKBOOT=1
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
	export OF_NO_MIUI_PATCH_WARNING=1
	export OF_USE_GREEN_LED=0
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	export FOX_USE_NANO_EDITOR=1
	export FOX_USE_TAR_BINARY=1
	export FOX_USE_ZIP_BINARY=1
	export FOX_USE_SED_BINARY=1
	export FOX_USE_XZ_UTILS=1
	export FOX_REPLACE_BUSYBOX_PS=1
	export OF_USE_NEW_MAGISKBOOT=1
	export OF_SKIP_MULTIUSER_FOLDERS_BACKUP=1
	export FOX_BUGGED_AOSP_ARB_WORKAROUND="1546300800"; # Tue Jan 1 2019 00:00:00 GMT
        export OF_SKIP_DECRYPTED_ADOPTED_STORAGE=1
        export OF_USE_SYSTEM_FINGERPRINT=1
        export OF_MOUNT_NON_DYNAMIC_RW=1

	# OTA
	export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
	export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
	export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1

	# Customize
	export OF_CLOCK_POS=1
	export OF_ALLOW_DISABLE_NAVBAR=0
	export OF_HIDE_NOTCH=1
	export OF_SCREEN_H=2160
	export OF_STATUS_H=76
	export OF_STATUS_INDENT_LEFT=62
	export OF_STATUS_INDENT_RIGHT=62

	# R11.1 Settings
        export OF_QUICK_BACKUP_LIST="/boot;/data;/system;"
	export FOX_VERSION="R11.1_3.1"
	export FOX_BUILD_TYPE="Beta"
	export OF_MAINTAINER="Jprimero15"
        export OF_MAINTAINER_AVATAR="$INCLUDE_PATH/Jprimero15.png"


        # let's see what are our build VARs
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
  	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
  	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
   	   export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
 	fi
