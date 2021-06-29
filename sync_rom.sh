#!/bin/bash

set -exv

#sync rom
repo init --depth=1 --no-repo-verify -u https://github.com/PixelExperience/manifest -b eleven -g default,-device,-mips,-darwin,-notdefault
git clone https://github.com/yashlearnpython/local_manifest.git -b pe .repo/local_manifests
repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all) || repo sync -c --no-clone-bundle --no-tags --optimized-fetch --prune --force-sync -j$(nproc --all)
