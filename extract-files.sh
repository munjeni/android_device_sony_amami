#!/bin/bash

set -e

# Use tradition sort
export LC_ALL=C

export VENDOR=sony
export DEVICE=amami
export DEVICE_COMMON=rhine-common
export BOARDCONFIGVENDOR=false
export BOARD_VENDOR_PLATFORM=rhine
export TARGET_BOARD_PLATFORM=msm8974

../common/extract-files.sh $@
../common/setup-makefiles.sh

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

LINEAGE_ROOT="$MY_DIR"/../../..

HELPER="$LINEAGE_ROOT"/vendor/lineage/build/tools/extract_utils.sh
if [ ! -f "$HELPER" ]; then
    echo "Unable to find helper script at $HELPER"
    exit 1
fi
. "$HELPER"

if [ $# -eq 0 ]; then
    SRC=adb
else
    if [ $# -eq 1 ]; then
        SRC=$1
    else
        echo "$0: bad number of arguments"
        echo ""
        echo "usage: $0 [PATH_TO_EXPANDED_ROM]"
        echo ""
        echo "If PATH_TO_EXPANDED_ROM is not specified, blobs will be extracted from"
        echo "the device using adb pull."
        exit 1
    fi
fi

# Initialize the helper for platform device
setup_vendor "$DEVICE" "$VENDOR" "$LINEAGE_ROOT"

extract "$MY_DIR"/proprietary-files.txt "$SRC"

# Reinitialize the helper for common device
setup_vendor "$DEVICE_COMMON" "$VENDOR" "$LINEAGE_ROOT"

extract "$MY_DIR"/proprietary-files-qc.txt "$SRC"

# Reinitialize the helper for device
setup_vendor "$DEVICE" "$VENDOR" "$LINEAGE_ROOT"

extract "$MY_DIR"/proprietary-files.txt "$SRC"

"$MY_DIR"/setup-makefiles.sh

