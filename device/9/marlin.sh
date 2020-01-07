#!/bin/bash

chmod 0755 $MODPATH/curl

ui_print "Downloading module files for '"$DEVICE"' and Android Version '"$RELEASE"'"
  ui_print "Check Internet connection..."
  ping -q -w1 -c1 google.com &>/dev/null
  if [[ $? -eq 0 ]]; then
    ui_print "Successful connection, start downloading..."
    mkdir -p $TMPDIR/$RELEASE/taimen/NexusWallpapersStubPrebuilt2017
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/taimen/NexusWallpapersStubPrebuilt2017/NexusWallpapersStubPrebuilt2017.apk -o $TMPDIR/$RELEASE/taimen/NexusWallpapersStubPrebuilt2017/NexusWallpapersStubPrebuilt2017.apk
    mkdir -p $TMPDIR/$RELEASE/crosshatch/NexusWallpapersStubPrebuilt2018
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/crosshatch/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk -o $TMPDIR/$RELEASE/crosshatch/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk

    mkdir -p $TMPDIR/$RELEASE/taimen/WallpapersBReel2017/lib/arm64
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/taimen/WallpapersBReel2017/WallpapersBReel2017.apk -o $TMPDIR/$RELEASE/taimen/WallpapersBReel2017/WallpapersBReel2017.apk
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/taimen/WallpapersBReel2017/lib/arm64/libgdx.so -o $TMPDIR/$RELEASE/taimen/WallpapersBReel2017/lib/arm64/libgdx.so
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/taimen/WallpapersBReel2017/lib/arm64/libwallpapers-breel-jni.so  -o $TMPDIR/$RELEASE/taimen/WallpapersBReel2017/lib/arm64/libwallpapers-breel-jni.so

    mkdir -p $TMPDIR/$RELEASE/crosshatch/WallpapersBReel2018
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/crosshatch/WallpapersBReel2018/WallpapersBReel2018.apk -o $TMPDIR/$RELEASE/crosshatch/WallpapersBReel2018/WallpapersBReel2018.apk

  ui_print "Download complete."
  else
    abort "Internet connection is not available. Check the connection and try again."
  fi

  NexusWallpapersStubPrebuilt2017=$TMPDIR/$RELEASE/taimen/NexusWallpapersStubPrebuilt2017/NexusWallpapersStubPrebuilt2017.apk
  NexusWallpapersStubPrebuilt2018=$TMPDIR/$RELEASE/crosshatch/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk

  WallpapersBReel2017libgdx=$TMPDIR/$RELEASE/taimen/WallpapersBReel2017/lib/arm64/libgdx.so
  WallpapersBReel2017libwallpapers=$TMPDIR/$RELEASE/taimen/WallpapersBReel2017/lib/arm64/libwallpapers-breel-jni.so
  WallpapersBReel2017=$TMPDIR/$RELEASE/taimen/WallpapersBReel2017/WallpapersBReel2017.apk

  WallpapersBReel2018=$TMPDIR/$RELEASE/crosshatch/WallpapersBReel2018/WallpapersBReel2018.apk

  ui_print "Installation..."

  mkdir -p $MODPATH/system/product/app/NexusWallpapersStubPrebuilt2017
  cp -af $NexusWallpapersStubPrebuilt2017 $MODPATH/system/product/app/NexusWallpapersStubPrebuilt2017/NexusWallpapersStubPrebuilt2017.apk
  mkdir -p $MODPATH/system/product/app/NexusWallpapersStubPrebuilt2018
  cp -af $NexusWallpapersStubPrebuilt2018 $MODPATH/system/product/app/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk
  
  mkdir -p $MODPATH/system/product/app/WallpapersBReel2017/lib/arm64
  cp -af $WallpapersBReel2017libgdx $MODPATH/system/product/app/WallpapersBReel2017/lib/arm64/libgdx.so
  cp -af $WallpapersBReel2017libwallpapers $MODPATH/system/product/app/WallpapersBReel2017/lib/arm64/libwallpapers-breel-2018-jni.so
  cp -af $WallpapersBReel2017 $MODPATH/system/product/app/WallpapersBReel2017/WallpapersBReel2017.apk

  mkdir -p $MODPATH/system/product/app/WallpapersBReel2018
  cp -af $WallpapersBReel2018 $MODPATH/system/product/app/WallpapersBReel2018/WallpapersBReel2018.apk

ui_print "Installation complete."