#!/bin/bash

set -exv

#sync rom
repo init --depth=1 -u https://github.com/AOSPA/manifest -b ruby -g default,-device,-mips,-darwin,-notdefault
git clone https://github.com/yashlearnpython/local_manifest.git -b pa .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all) || repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j8
