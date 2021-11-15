#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

set -e

DEVICE=whyred
VENDOR=xiaomi

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

ANDROID_ROOT="${MY_DIR}"/../../..

HELPER="${ANDROID_ROOT}/tools/extract-utils/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then
    echo "Unable to find helper script at ${HELPER}"
    exit 1
fi
. "$HELPER"

SECTION=
KANG=

while [ "${#}" -gt 0 ]; do
    case "${1}" in
        -n | --no-cleanup )
            CLEAN_VENDOR=false
            ;;
        -k | --kang )
                KANG="--kang"
                ;;
        -s | --section )
                SECTION="${2}"; shift
                CLEAN_VENDOR=false
                ;;
        * )
                SRC="${1}"
                ;;
    esac
    shift
done

if [ -z "$SRC" ]; then
    SRC=adb
fi

# Initialize the helper
setup_vendor "$DEVICE" "$VENDOR" "$ANDROID_ROOT" true "$CLEAN_VENDOR"

extract "$MY_DIR"/proprietary-files.txt "$SRC" \
    "${KANG}" --section "${SECTION}"

function blob_fixup() {
    case "${1}" in
    product/lib64/libdpmframework.so)
        patchelf --add-needed libcutils_shim.so "${2}"
        ;;
    vendor/lib/hw/camera.sdm660.so)
        patchelf --add-needed libcamera_sdm660_shim.so "${2}"
        ;;
    esac
}

GOODIX="$ANDROID_ROOT"/vendor/"$VENDOR"/"$DEVICE"/proprietary/vendor/lib64/libgf_ca.so

sed -i "s|/system/etc/firmware|/vendor/firmware\x0\x0\x0\x0|g" $GOODIX

BLOB_ROOT="$ANDROID_ROOT"/vendor/"$VENDOR"/"$DEVICE"/proprietary

patchelf --remove-needed vendor.xiaomi.hardware.mtdservice@1.0.so "$BLOB_ROOT"/vendor/bin/mlipayd@1.1
patchelf --remove-needed vendor.xiaomi.hardware.mtdservice@1.0.so "$BLOB_ROOT"/vendor/lib64/libmlipay.so
patchelf --remove-needed vendor.xiaomi.hardware.mtdservice@1.0.so "$BLOB_ROOT"/vendor/lib64/libmlipay@1.1.so

sed -i 's/libicuuc.so/libicuuq.so/g' "$BLOB_ROOT"/vendor/lib/libicuuq.so
sed -i 's/libicuuc.so/libicuuq.so/g' "$BLOB_ROOT"/vendor/lib/libMiWatermark.so
sed -i 's/libminikin.so/libminikiq.so/g' "$BLOB_ROOT"/vendor/lib/libMiWatermark.so
sed -i 's/libui.so/libuq.so/g' "$BLOB_ROOT"/vendor/lib/hw/camera.sdm660.so

#patchelf --add-needed libprocessgroup.so "$BLOB_ROOT"/vendor/lib/hw/sound_trigger.primary.sdm660.so
#patchelf --add-needed libprocessgroup.so "$BLOB_ROOT"/vendor/lib64/hw/sound_trigger.primary.sdm660.so

"$MY_DIR"/setup-makefiles.sh
