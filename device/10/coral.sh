#!/bin/bash

ui_print "Downloading module files for '"$DEVICE"' and Android Version '"$RELEASE"'"
  ui_print "Check Internet connection..."
  ping -q -w1 -c1 google.com &>/dev/null
	if [[ $? -eq 0 ]]; then
		ui_print "Successful connection, start downloading..."
    ui_print "File downloading (1/16)..."
    	mkdir -p $TMPDIR/$RELEASE/marlin/NexusWallpapersStubPrebuilt
      wget -P $TMPDIR/$RELEASE/marlin/NexusWallpapersStubPrebuilt https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/marlin/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk
    ui_print "File downloading (2/16)..."
      mkdir -p $TMPDIR/$RELEASE/taimen/NexusWallpapersStubPrebuilt2017
      wget -P $TMPDIR/$RELEASE/taimen/NexusWallpapersStubPrebuilt2017 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/taimen/NexusWallpapersStubPrebuilt2017/NexusWallpapersStubPrebuilt2017.apk
    ui_print "File downloading (3/16)..."
      mkdir -p $TMPDIR/$RELEASE/crosshatch/NexusWallpapersStubPrebuilt2018
      wget -P $TMPDIR/$RELEASE/crosshatch/NexusWallpapersStubPrebuilt2018 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/crosshatch/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk
    ui_print "File downloading (4/16)..."
      mkdir -p $TMPDIR/$RELEASE/marlin/WallpapersBReel/lib/arm64
      wget -P $TMPDIR/$RELEASE/marlin/WallpapersBReel https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/marlin/WallpapersBReel/WallpapersBReel.apk
    ui_print "File downloading (5/16)..."
      wget -P $TMPDIR/$RELEASE/marlin/WallpapersBReel/lib/arm64 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/marlin/WallpapersBReel/lib/arm64/libgdx.so
    ui_print "File downloading (6/16)..."
      wget -P $TMPDIR/$RELEASE/marlin/WallpapersBReel/lib/arm64 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/marlin/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
    ui_print "File downloading (7/16)..."
      mkdir -p $TMPDIR/$RELEASE/marlin/WallpapersUsTwo
      wget -P $TMPDIR/$RELEASE/marlin/WallpapersUsTwo https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/marlin/WallpapersUsTwo/WallpapersUsTwo.apk
    ui_print "File downloading (8/16)..."
      mkdir -p $TMPDIR/$RELEASE/taimen/WallpapersBReel2017/lib/arm64
      wget -P $TMPDIR/$RELEASE/taimen/WallpapersBReel2017 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/taimen/WallpapersBReel2017/WallpapersBReel2017.apk
    ui_print "File downloading (9/16)..."
      wget -P $TMPDIR/$RELEASE/taimen/WallpapersBReel2017/lib/arm64 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/taimen/WallpapersBReel2017/lib/arm64/libgdx.so
    ui_print "File downloading (10/16)..."
      wget -P $TMPDIR/$RELEASE/taimen/WallpapersBReel2017/lib/arm64 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/taimen/WallpapersBReel2017/lib/arm64/libwallpapers-breel-jni.so
    ui_print "File downloading (11/16)..."
      mkdir -p $TMPDIR/$RELEASE/crosshatch/WallpapersBReel2018/lib/arm64 $TMPDIR/$RELEASE/crosshatch/WallpapersBReel2018/oat/arm64
      wget -P $TMPDIR/$RELEASE/crosshatch/WallpapersBReel2018 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/crosshatch/WallpapersBReel2018/WallpapersBReel2018.apk
    ui_print "File downloading (12/16)..."
      wget -P $TMPDIR/$RELEASE/crosshatch/WallpapersBReel2018/lib/arm64 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/crosshatch/WallpapersBReel2018/lib/arm64/libgdx.so
    ui_print "File downloading (13/16)..."
      wget -P $TMPDIR/$RELEASE/crosshatch/WallpapersBReel2018/lib/arm64 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/crosshatch/WallpapersBReel2018/lib/arm64/libwallpapers-breel-2018-jni.so
    ui_print "File downloading (14/16)..."
      wget -P $TMPDIR/$RELEASE/crosshatch/WallpapersBReel2018/oat/arm64 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/crosshatch/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.odex
    ui_print "File downloading (15/16)..."
      wget -P $TMPDIR/$RELEASE/crosshatch/WallpapersBReel2018/oat/arm64 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/crosshatch/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.vdex
    ui_print "File downloading (16/16)..."
    ui_print "Download complete."
	else
    abort "Internet connection is not available. Check the connection and try again."
	fi
  APK_PATH_PX1_W=$TMPDIR/$RELEASE/marlin/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk
  APK_PATH_PX2_W=$TMPDIR/$RELEASE/taimen/NexusWallpapersStubPrebuilt2017/NexusWallpapersStubPrebuilt2017.apk
  APK_PATH_PX3_W=$TMPDIR/$RELEASE/crosshatch/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk
  LIB_PATH_PX1_D=$TMPDIR/$RELEASE/marlin/WallpapersBReel/lib/arm64/libgdx.so
  LIB_PATH_PX1_B=$TMPDIR/$RELEASE/marlin/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
  APK_PATH_PX1_LW1=$TMPDIR/$RELEASE/marlin/WallpapersBReel/WallpapersBReel.apk
  APK_PATH_PX1_LW2=$TMPDIR/$RELEASE/marlin/WallpapersUsTwo/WallpapersUsTwo.apk
  LIB_PATH_PX2_D=$TMPDIR/$RELEASE/taimen/WallpapersBReel2017/lib/arm64/libgdx.so
  LIB_PATH_PX2_B=$TMPDIR/$RELEASE/taimen/WallpapersBReel2017/lib/arm64/libwallpapers-breel-jni.so
  APK_PATH_PX2_LW=$TMPDIR/$RELEASE/taimen/WallpapersBReel2017/WallpapersBReel2017.apk
  LIB_PATH_PX3_D=$TMPDIR/$RELEASE/crosshatch/WallpapersBReel2018/lib/arm64/libgdx.so
  LIB_PATH_PX3_B=$TMPDIR/$RELEASE/crosshatch/WallpapersBReel2018/lib/arm64/libwallpapers-breel-2018-jni.so
  OAT_PATH_PX3_O=$TMPDIR/$RELEASE/crosshatch/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.odex
  OAT_PATH_PX3_V=$TMPDIR/$RELEASE/crosshatch/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.vdex
  APK_PATH_PX3_LW=$TMPDIR/$RELEASE/crosshatch/WallpapersBReel2018/WallpapersBReel2018.apk
  ui_print "Installation..."
  mkdir -p $MODPATH/system/app/NexusWallpapersStubPrebuilt
  cp -af $APK_PATH_PX1_W $MODPATH/system/app/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk
  mkdir -p $MODPATH/system/app/NexusWallpapersStubPrebuilt2017
  cp -af $APK_PATH_PX2_W $MODPATH/system/app/NexusWallpapersStubPrebuilt2017/NexusWallpapersStubPrebuilt2017.apk
  mkdir -p $MODPATH/system/app/NexusWallpapersStubPrebuilt2018
  cp -af $APK_PATH_PX3_W $MODPATH/system/app/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk
  mkdir -p $MODPATH/system/app/WallpapersBReel/lib/arm64
  cp -af $LIB_PATH_PX1_D $MODPATH/system/app/WallpapersBReel/lib/arm64/libgdx.so
  cp -af $LIB_PATH_PX1_B $MODPATH/system/app/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
  cp -af $APK_PATH_PX1_LW1 $MODPATH/system/app/WallpapersBReel/WallpapersBReel.apk
  mkdir -p $MODPATH/system/app/WallpapersUsTwo
  cp -af $APK_PATH_PX1_LW2 $MODPATH/system/app/WallpapersUsTwo/WallpapersUsTwo.apk
  mkdir -p $MODPATH/system/app/WallpapersBReel2017/lib/arm64
  cp -af $LIB_PATH_PX2_D $MODPATH/system/app/WallpapersBReel2017/lib/arm64/libgdx.so
  cp -af $LIB_PATH_PX2_B $MODPATH/system/app/WallpapersBReel2017/lib/arm64/libwallpapers-breel-jni.so
  cp -af $APK_PATH_PX2_LW $MODPATH/system/app/WallpapersBReel2017/WallpapersBReel2017.apk
  mkdir -p $MODPATH/system/app/WallpapersBReel2018/lib/arm64 $MODPATH/system/app/WallpapersBReel2018/oat/arm64
  cp -af $LIB_PATH_PX3_D $MODPATH/system/app/WallpapersBReel2018/lib/arm64/libgdx.so
  cp -af $LIB_PATH_PX3_B $MODPATH/system/app/WallpapersBReel2018/lib/arm64/libwallpapers-breel-2018-jni.so
  cp -af $OAT_PATH_PX3_O $MODPATH/system/app/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.odex
  cp -af $OAT_PATH_PX3_V $MODPATH/system/app/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.vdex
  cp -af $APK_PATH_PX3_LW $MODPATH/system/app/WallpapersBReel2018/WallpapersBReel2018.apk
  ui_print "Installation complete."