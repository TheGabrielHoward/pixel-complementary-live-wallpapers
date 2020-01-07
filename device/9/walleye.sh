#!/bin/bash

unzip -o "$ZIPFILE" curl -d $TMPDIR
cp -f $TMPDIR/curl $MODPATH/curl
chmod 0755 $MODPATH/curl

ui_print "Downloading module files for '"$DEVICE"' and Android Version '"$RELEASE"'"
  ui_print "Check Internet connection..."
  ping -q -w1 -c1 google.com &>/dev/null
  if [[ $? -eq 0 ]]; then
    ui_print "Successful connection, start downloading..."
    mkdir -p $TMPDIR/$RELEASE/sailfish/NexusWallpapersStubPrebuilt
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/sailfish/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk -o $TMPDIR/$RELEASE/sailfish/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk
    mkdir -p $TMPDIR/$RELEASE/blueline/NexusWallpapersStubPrebuilt2018
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/blueline/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk -o $TMPDIR/$RELEASE/blueline/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk

    mkdir -p $TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/sailfish/WallpapersBReel/WallpapersBReel.apk -o $TMPDIR/$RELEASE/sailfish/WallpapersBReel/WallpapersBReel.apk
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/sailfish/WallpapersBReel/lib/arm64/libgdx.so -o $TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64/libgdx.so
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/sailfish/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so -o $TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
    mkdir -p $TMPDIR/$RELEASE/sailfish/WallpapersUsTwo
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/sailfish/WallpapersUsTwo/WallpapersUsTwo.apk -o $TMPDIR/$RELEASE/sailfish/WallpapersUsTwo/WallpapersUsTwo.apk
    
    mkdir -p $TMPDIR/$RELEASE/blueline/WallpapersBReel2018
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/blueline/WallpapersBReel2018/WallpapersBReel2018.apk -o $TMPDIR/$RELEASE/blueline/WallpapersBReel2018/WallpapersBReel2018.apk

  ui_print "Download complete."
  else
    abort "Internet connection is not available. Check the connection and try again."
  fi

  NexusWallpapersStubPrebuilt=$TMPDIR/$RELEASE/sailfish/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk
  NexusWallpapersStubPrebuilt2018=$TMPDIR/$RELEASE/blueline/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk

  WallpapersBReellibgdx=$TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64/libgdx.so
  WallpapersBReellibgeswallpapers=$TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
  WallpapersBReel=$TMPDIR/$RELEASE/sailfish/WallpapersBReel/WallpapersBReel.apk
  WallpapersUsTwo=$TMPDIR/$RELEASE/sailfish/WallpapersUsTwo/WallpapersUsTwo.apk

  WallpapersBReel2018=$TMPDIR/$RELEASE/blueline/WallpapersBReel2018/WallpapersBReel2018.apk

  ui_print "Installation..."

  mkdir -p $MODPATH/system/product/app/NexusWallpapersStubPrebuilt
  cp -af $NexusWallpapersStubPrebuilt $MODPATH/system/product/app/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk
  mkdir -p $MODPATH/system/product/app/NexusWallpapersStubPrebuilt2018
  cp -af $NexusWallpapersStubPrebuilt2018 $MODPATH/system/product/app/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk

  mkdir -p $MODPATH/system/product/app/WallpapersBReel/lib/arm64
  cp -af $WallpapersBReellibgdx $MODPATH/system/product/app/WallpapersBReel/lib/arm64/libgdx.so
  cp -af $WallpapersBReellibgeswallpapers $MODPATH/system/product/app/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
  cp -af $WallpapersBReel $MODPATH/system/product/app/WallpapersBReel/WallpapersBReel.apk
  
  mkdir -p $MODPATH/system/product/app/WallpapersUsTwo
  cp -af $WallpapersUsTwo $MODPATH/system/product/app/WallpapersUsTwo/WallpapersUsTwo.apk
  
  mkdir -p $MODPATH/system/product/app/WallpapersBReel2018
  cp -af $WallpapersBReel2018 $MODPATH/system/product/app/WallpapersBReel2018/WallpapersBReel2018.apk

ui_print "Installation complete."