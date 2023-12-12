#!/bin/sh

if [ -d "prebuilt" ] ; then
    echo "ERROR: prebuilt directory exists. Please remove it before running this script."
    exit 1
fi

# swupdate
SWUPDATE="2023.05"
mkdir -p prebuilt
echo "=== Downloading swupdate ==="
cd prebuilt && git clone -b $SWUPDATE https://github.com/sbabic/swupdate.git && cd -

# swupdate-config
echo "=== Downloading swupdate-config ==="
wget --no-verbose --show-progress -P prebuilt/swupdate/configs "https://raw.githubusercontent.com/openaia/swupdate-config/master/configs/hawkbitdebupdate_defconfig"

find prebuilt/
echo "=== Remember to remove prebuilt directory for new aritfacts to load ==="
