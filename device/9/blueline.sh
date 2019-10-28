#!/bin/bash

ui_print "Downloading module files for '"$DEVICE"' and Android Version '"$RELEASE"'"
  ui_print "Check Internet connection..."
  ping -q -w1 -c1 google.com &>/dev/null
	if [[ $? -eq 0 ]]; then
		ui_print "Successful connection, start downloading..."
    ui_print "File downloading (1/9)..."
      mkdir -p $TMPDIR/$RELEASE/sailfish/NexusWallpapersStubPrebuilt
      wget -P $TMPDIR/$RELEASE/sailfish/NexusWallpapersStubPrebuilt https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/sailfish/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk
    ui_print "File downloading (2/9)..."
      mkdir -p $TMPDIR/$RELEASE/walleye/NexusWallpapersStubPrebuilt2017
      wget -P $TMPDIR/$RELEASE/walleye/NexusWallpapersStubPrebuilt2017 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/walleye/NexusWallpapersStubPrebuilt2017/NexusWallpapersStubPrebuilt2017.apk
    ui_print "File downloading (3/9)..."
      mkdir -p $TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64
      wget -P $TMPDIR/$RELEASE/sailfish/WallpapersBReel https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/sailfish/WallpapersBReel/WallpapersBReel.apk
    ui_print "File downloading (4/9)..."
      wget -P $TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/sailfish/WallpapersBReel/lib/arm64/libgdx.so
    ui_print "File downloading (5/9)..."
      wget -P $TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/sailfish/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
    ui_print "File downloading (6/9)..."
      mkdir -p $TMPDIR/$RELEASE/sailfish/WallpapersUsTwo
      wget -P $TMPDIR/$RELEASE/sailfish/WallpapersUsTwo https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/sailfish/WallpapersUsTwo/WallpapersUsTwo.apk
    ui_print "File downloading (7/9)..."
      mkdir -p $TMPDIR/$RELEASE/walleye/WallpapersBReel2017/lib/arm64
      wget -P $TMPDIR/$RELEASE/walleye/WallpapersBReel2017 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/walleye/WallpapersBReel2017/WallpapersBReel2017.apk
    ui_print "File downloading (8/9)..."
      wget -P $TMPDIR/$RELEASE/walleye/WallpapersBReel2017/lib/arm64 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/walleye/WallpapersBReel2017/lib/arm64/libgdx.so
    ui_print "File downloading (9/9)..."
      wget -P $TMPDIR/$RELEASE/walleye/WallpapersBReel2017/lib/arm64 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/walleye/WallpapersBReel2017/lib/arm64/libwallpapers-breel-jni.so
    ui_print "Download complete."
	else
    abort "Internet connection is not available. Check the connection and try again."
	fi
  APK_PATH_PX1_W=$TMPDIR/$RELEASE/sailfish/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk
  APK_PATH_PX2_W=$TMPDIR/$RELEASE/walleye/NexusWallpapersStubPrebuilt2017/NexusWallpapersStubPrebuilt2017.apk
  LIB_PATH_PX1_D=$TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64/libgdx.so
  LIB_PATH_PX1_B=$TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
  APK_PATH_PX1_LW1=$TMPDIR/$RELEASE/sailfish/WallpapersBReel/WallpapersBReel.apk
  APK_PATH_PX1_LW2=$TMPDIR/$RELEASE/sailfish/WallpapersUsTwo/WallpapersUsTwo.apk
  LIB_PATH_PX2_D=$TMPDIR/$RELEASE/walleye/WallpapersBReel2017/lib/arm64/libgdx.so
  LIB_PATH_PX2_B=$TMPDIR/$RELEASE/walleye/WallpapersBReel2017/lib/arm64/libwallpapers-breel-jni.so
  APK_PATH_PX2_LW=$TMPDIR/$RELEASE/walleye/WallpapersBReel2017/WallpapersBReel2017.apk
  ui_print "Installation..."
  mkdir -p $MODPATH/system/app/NexusWallpapersStubPrebuilt
  cp -af $APK_PATH_PX1_W $MODPATH/system/app/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk
  mkdir -p $MODPATH/system/app/NexusWallpapersStubPrebuilt2017
  cp -af $APK_PATH_PX2_W $MODPATH/system/app/NexusWallpapersStubPrebuilt2017/NexusWallpapersStubPrebuilt2017.apk
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
  ui_print "Installation complete."