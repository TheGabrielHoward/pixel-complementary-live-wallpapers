#!/bin/bash

chmod 0755 $MODPATH/curl

ui_print "Downloading module files for '"$DEVICE"' and Android Version '"$RELEASE"'"
  ui_print "Check Internet connection..."
  ping -q -w1 -c1 google.com &>/dev/null
  if [[ $? -eq 0 ]]; then
  	ui_print "Successful connection, start downloading..."

    # Live Walls
    mkdir -p $TMPDIR/$RELEASE/marlin/WallpapersBReel/lib/arm64
    $MODPATH/curl -k -L https://gitlab.com/thegabrielhoward/pixel-complementary-live-wallpapers/raw/master/$RELEASE/2019-10-06/marlin/WallpapersBReel/WallpapersBReel.apk -o $TMPDIR/$RELEASE/marlin/WallpapersBReel/WallpapersBReel.apk
    $MODPATH/curl -k -L https://gitlab.com/thegabrielhoward/pixel-complementary-live-wallpapers/raw/master/$RELEASE/2019-10-06/marlin/WallpapersBReel/lib/arm64/libgdx.so -o $TMPDIR/$RELEASE/marlin/WallpapersBReel/lib/arm64/libgdx.so
    $MODPATH/curl -k -L https://gitlab.com/thegabrielhoward/pixel-complementary-live-wallpapers/raw/master/$RELEASE/2019-10-06/marlin/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so -o $TMPDIR/$RELEASE/marlin/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
    mkdir -p $TMPDIR/$RELEASE/marlin/WallpapersUsTwo
    $MODPATH/curl -k -L https://gitlab.com/thegabrielhoward/pixel-complementary-live-wallpapers/raw/master/$RELEASE/2019-10-06/marlin/WallpapersUsTwo/WallpapersUsTwo.apk -o $TMPDIR/$RELEASE/marlin/WallpapersUsTwo/WallpapersUsTwo.apk

    mkdir -p $TMPDIR/$RELEASE/taimen/WallpapersBReel2017/lib/arm64
    $MODPATH/curl -k -L https://gitlab.com/thegabrielhoward/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/taimen/WallpapersBReel2017/WallpapersBReel2017.apk -o $TMPDIR/$RELEASE/taimen/WallpapersBReel2017/WallpapersBReel2017.apk
    $MODPATH/curl -k -L https://gitlab.com/thegabrielhoward/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/taimen/WallpapersBReel2017/lib/arm64/libgdx.so -o $TMPDIR/$RELEASE/taimen/WallpapersBReel2017/lib/arm64/libgdx.so
    $MODPATH/curl -k -L https://gitlab.com/thegabrielhoward/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/taimen/WallpapersBReel2017/lib/arm64/libwallpapers-breel-jni.so  -o $TMPDIR/$RELEASE/taimen/WallpapersBReel2017/lib/arm64/libwallpapers-breel-jni.so

    mkdir -p $TMPDIR/$RELEASE/coral/WallpapersBReel2019/lib/arm64 $TMPDIR/$RELEASE/coral/WallpapersBReel2019/oat/arm64
    $MODPATH/curl -k -L https://gitlab.com/thegabrielhoward/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/coral/WallpapersBReel2019/WallpapersBReel2019.apk -o $TMPDIR/$RELEASE/coral/WallpapersBReel2019/WallpapersBReel2019.apk
    $MODPATH/curl -k -L https://gitlab.com/thegabrielhoward/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/coral/WallpapersBReel2019/lib/arm64/libgdx.so -o $TMPDIR/$RELEASE/coral/WallpapersBReel2019/lib/arm64/libgdx.so
    $MODPATH/curl -k -L https://gitlab.com/thegabrielhoward/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/coral/WallpapersBReel2019/oat/arm64/WallpapersBReel2019.odex -o $TMPDIR/$RELEASE/coral/WallpapersBReel2019/oat/arm64/WallpapersBReel2019.odex
    $MODPATH/curl -k -L https://gitlab.com/thegabrielhoward/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/coral/WallpapersBReel2019/oat/arm64/WallpapersBReel2019.vdex -o $TMPDIR/$RELEASE/coral/WallpapersBReel2019/oat/arm64/WallpapersBReel2019.vdex

    mkdir -p $TMPDIR/$RELEASE/sunfish/WallpapersBReel2020a/lib/arm64 $TMPDIR/$RELEASE/sunfish/WallpapersBReel2020a/oat/arm64
    $MODPATH/curl -k -L https://gitlab.com/thegabrielhoward/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION_PIXEL/sunfish/WallpapersBReel2020a/WallpapersBReel2020a.apk -o $TMPDIR/$RELEASE/sunfish/WallpapersBReel2020a/WallpapersBReel2020a.apk
    $MODPATH/curl -k -L https://gitlab.com/thegabrielhoward/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION_PIXEL/sunfish/WallpapersBReel2020a/lib/arm64/libgdx.so -o $TMPDIR/$RELEASE/sunfish/WallpapersBReel2020a/lib/arm64/libgdx.so
    $MODPATH/curl -k -L https://gitlab.com/thegabrielhoward/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION_PIXEL/sunfish/WallpapersBReel2020a/oat/arm64/WallpapersBReel2020a.odex -o $TMPDIR/$RELEASE/sunfish/WallpapersBReel2020a/oat/arm64/WallpapersBReel2020a.odex
    $MODPATH/curl -k -L https://gitlab.com/thegabrielhoward/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION_PIXEL/sunfish/WallpapersBReel2020a/oat/arm64/WallpapersBReel2020a.vdex -o $TMPDIR/$RELEASE/sunfish/WallpapersBReel2020a/oat/arm64/WallpapersBReel2020a.vdex

  ui_print "Download complete."
  else
    abort "Internet connection is not available. Check the connection and try again."
  fi

  WallpapersBReellibgdx=$TMPDIR/$RELEASE/marlin/WallpapersBReel/lib/arm64/libgdx.so
  WallpapersBReellibgeswallpapers=$TMPDIR/$RELEASE/marlin/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
  WallpapersBReel=$TMPDIR/$RELEASE/marlin/WallpapersBReel/WallpapersBReel.apk
  WallpapersUsTwo=$TMPDIR/$RELEASE/marlin/WallpapersUsTwo/WallpapersUsTwo.apk

  WallpapersBReel2017libgdx=$TMPDIR/$RELEASE/taimen/WallpapersBReel2017/lib/arm64/libgdx.so
  WallpapersBReel2017libwallpapers=$TMPDIR/$RELEASE/taimen/WallpapersBReel2017/lib/arm64/libwallpapers-breel-jni.so
  WallpapersBReel2017=$TMPDIR/$RELEASE/taimen/WallpapersBReel2017/WallpapersBReel2017.apk

  WallpapersBReel2019libgdx=$TMPDIR/$RELEASE/coral/WallpapersBReel2019/lib/arm64/libgdx.so
  WallpapersBReel2019odex=$TMPDIR/$RELEASE/coral/WallpapersBReel2019/oat/arm64/WallpapersBReel2019.odex
  WallpapersBReel2019vdex=$TMPDIR/$RELEASE/coral/WallpapersBReel2019/oat/arm64/WallpapersBReel2019.vdex
  WallpapersBReel2019=$TMPDIR/$RELEASE/coral/WallpapersBReel2019/WallpapersBReel2019.apk

  WallpapersBReel2020alibgdx=$TMPDIR/$RELEASE/sunfish/WallpapersBReel2020a/lib/arm64/libgdx.so
  WallpapersBReel2020aodex=$TMPDIR/$RELEASE/sunfish/WallpapersBReel2020a/oat/arm64/WallpapersBReel2020a.odex
  WallpapersBReel2020avdex=$TMPDIR/$RELEASE/sunfish/WallpapersBReel2020a/oat/arm64/WallpapersBReel2020a.vdex
  WallpapersBReel2020a=$TMPDIR/$RELEASE/sunfish/WallpapersBReel2020a/WallpapersBReel2020a.apk

  ui_print "Installation..."

  mkdir -p $MODPATH/system/product/app/WallpapersBReel/lib/arm64
  cp -af $WallpapersBReellibgdx $MODPATH/system/product/app/WallpapersBReel/lib/arm64/libgdx.so
  cp -af $WallpapersBReellibgeswallpapers $MODPATH/system/product/app/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
  cp -af $WallpapersBReel $MODPATH/system/product/app/WallpapersBReel/WallpapersBReel.apk

  mkdir -p $MODPATH/system/product/app/WallpapersUsTwo
  cp -af $WallpapersUsTwo $MODPATH/system/product/app/WallpapersUsTwo/WallpapersUsTwo.apk

  mkdir -p $MODPATH/system/product/app/WallpapersBReel2017/lib/arm64
  cp -af $WallpapersBReel2017libgdx $MODPATH/system/product/app/WallpapersBReel2017/lib/arm64/libgdx.so
  cp -af $WallpapersBReel2017libwallpapers $MODPATH/system/product/app/WallpapersBReel2017/lib/arm64/libwallpapers-breel-2018-jni.so
  cp -af $WallpapersBReel2017 $MODPATH/system/product/app/WallpapersBReel2017/WallpapersBReel2017.apk

  mkdir -p $MODPATH/system/product/app/WallpapersBReel2019/lib/arm64 $MODPATH/system/product/app/WallpapersBReel2019/oat/arm64
  cp -af $WallpapersBReel2019libgdx $MODPATH/system/product/app/WallpapersBReel2019/lib/arm64/libgdx.so
  cp -af $WallpapersBReel2019odex $MODPATH/system/product/app/WallpapersBReel2019/oat/arm64/WallpapersBReel2019.odex
  cp -af $WallpapersBReel2019vdex $MODPATH/system/product/app/WallpapersBReel2019/oat/arm64/WallpapersBReel2019.vdex
  cp -af $WallpapersBReel2019 $MODPATH/system/product/app/WallpapersBReel2019/WallpapersBReel2019.apk

  mkdir -p $MODPATH/system/product/app/WallpapersBReel2020a/lib/arm64 $MODPATH/system/product/app/WallpapersBReel2020a/oat/arm64
  cp -af $WallpapersBReel2020alibgdx $MODPATH/system/product/app/WallpapersBReel2020a/lib/arm64/libgdx.so
  cp -af $WallpapersBReel2020aodex $MODPATH/system/product/app/WallpapersBReel2020a/oat/arm64/WallpapersBReel2020a.odex
  cp -af $WallpapersBReel2020avdex $MODPATH/system/product/app/WallpapersBReel2020a/oat/arm64/WallpapersBReel2020a.vdex
  cp -af $WallpapersBReel2020a $MODPATH/system/product/app/WallpapersBReel2020a/WallpapersBReel2020a.apk

ui_print "Installation complete."
