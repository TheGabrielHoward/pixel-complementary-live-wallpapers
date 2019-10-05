#!/bin/bash

ui_print "Downloading module files for '"$DEVICE"' and Android Version '"$RELEASE"'"
  ui_print "Check Internet connection..."
  wget -q --tries=10 --timeout=20 --spider http://google.com
  if [[ $? -eq 0 ]]; then
    ui_print "Successful connection, start downloading..."
    ui_print "File downloading (1/7)..."
      mkdir -p $TMPDIR/$RELEASE/sailfish/NexusWallpapersStubPrebuilt
      wget -P $TMPDIR/$RELEASE/sailfish/NexusWallpapersStubPrebuilt https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/sailfish/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk
    ui_print "File downloading (2/7)..."
      mkdir -p $TMPDIR/$RELEASE/blueline/NexusWallpapersStubPrebuilt2018
      wget -P $TMPDIR/$RELEASE/blueline/NexusWallpapersStubPrebuilt2018 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/blueline/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk
    ui_print "File downloading (3/7)..."
      mkdir -p $TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64
      wget -P $TMPDIR/$RELEASE/sailfish/WallpapersBReel https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/sailfish/WallpapersBReel/WallpapersBReel.apk
    ui_print "File downloading (4/7)..."
      wget -P $TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/sailfish/WallpapersBReel/lib/arm64/libgdx.so
    ui_print "File downloading (5/7)..."
      wget -P $TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/sailfish/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
    ui_print "File downloading (6/7)..."  
      mkdir -p $TMPDIR/$RELEASE/sailfish/WallpapersUsTwo
      wget -P $TMPDIR/$RELEASE/sailfish/WallpapersUsTwo https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/sailfish/WallpapersUsTwo/WallpapersUsTwo.apk
    ui_print "File downloading (7/7)..."
      mkdir -p $TMPDIR/$RELEASE/blueline/WallpapersBReel2018
      wget -P $TMPDIR/$RELEASE/blueline/WallpapersBReel2018 https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/blueline/WallpapersBReel2018/WallpapersBReel2018.apk
  ui_print "Download complete."
  else
    abort "Internet connection is not available. Check the connection and try again."
  fi
  APK_PATH_PX1_W=$TMPDIR/$RELEASE/sailfish/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk
  APK_PATH_PX3_W=$TMPDIR/$RELEASE/blueline/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk
  LIB_PATH_PX1_D=$TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64/libgdx.so
  LIB_PATH_PX1_B=$TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
  APK_PATH_PX1_LW1=$TMPDIR/$RELEASE/sailfish/WallpapersBReel/WallpapersBReel.apk
  APK_PATH_PX1_LW2=$TMPDIR/$RELEASE/sailfish/WallpapersUsTwo/WallpapersUsTwo.apk
  APK_PATH_PX3_LW=$TMPDIR/$RELEASE/blueline/WallpapersBReel2018/WallpapersBReel2018.apk
  ui_print "Installation..."
  mkdir -p $MODPATH/system/app/NexusWallpapersStubPrebuilt
  cp -af $APK_PATH_PX1_W $MODPATH/system/app/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk
  mkdir -p $MODPATH/system/app/NexusWallpapersStubPrebuilt2018
  cp -af $APK_PATH_PX3_W $MODPATH/system/app/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk
  mkdir -p $MODPATH/system/app/WallpapersBReel/lib/arm64
  cp -af $LIB_PATH_PX1_D $MODPATH/system/app/WallpapersBReel/lib/arm64/libgdx.so
  cp -af $LIB_PATH_PX1_B $MODPATH/system/app/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
  cp -af $APK_PATH_PX1_LW1 $MODPATH/system/app/WallpapersBReel/WallpapersBReel.apk
  mkdir -p $MODPATH/system/app/WallpapersUsTwo
  cp -af $APK_PATH_PX1_LW2 $MODPATH/system/app/WallpapersUsTwo/WallpapersUsTwo.apk
  mkdir -p $MODPATH/system/app/WallpapersBReel2018
  cp -af $APK_PATH_PX3_LW $MODPATH/system/app/WallpapersBReel2018/WallpapersBReel2018.apk
  ui_print "Installation complete."