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
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/2019-10-06/sailfish/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk -o $TMPDIR/$RELEASE/sailfish/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk
    mkdir -p $TMPDIR/$RELEASE/walleye/NexusWallpapersStubPrebuilt2017
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/walleye/NexusWallpapersStubPrebuilt2017/NexusWallpapersStubPrebuilt2017.apk -o $TMPDIR/$RELEASE/walleye/NexusWallpapersStubPrebuilt2017/NexusWallpapersStubPrebuilt2017.apk
    mkdir -p $TMPDIR/$RELEASE/blueline/NexusWallpapersStubPrebuilt2018
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/blueline/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk -o $TMPDIR/$RELEASE/blueline/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk

    mkdir -p $TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/2019-10-06/sailfish/WallpapersBReel/WallpapersBReel.apk -o $TMPDIR/$RELEASE/sailfish/WallpapersBReel/WallpapersBReel.apk
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/2019-10-06/sailfish/WallpapersBReel/lib/arm64/libgdx.so -o $TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64/libgdx.so
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/2019-10-06/sailfish/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so -o $TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
    mkdir -p $TMPDIR/$RELEASE/sailfish/WallpapersUsTwo
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/2019-10-06/sailfish/WallpapersUsTwo/WallpapersUsTwo.apk -o $TMPDIR/$RELEASE/sailfish/WallpapersUsTwo/WallpapersUsTwo.apk

    mkdir -p $TMPDIR/$RELEASE/walleye/WallpapersBReel2017/lib/arm64
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/walleye/WallpapersBReel2017/WallpapersBReel2017.apk -o $TMPDIR/$RELEASE/walleye/WallpapersBReel2017/WallpapersBReel2017.apk
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/walleye/WallpapersBReel2017/lib/arm64/libgdx.so -o $TMPDIR/$RELEASE/walleye/WallpapersBReel2017/lib/arm64/libgdx.so
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/walleye/WallpapersBReel2017/lib/arm64/libwallpapers-breel-jni.so  -o $TMPDIR/$RELEASE/walleye/WallpapersBReel2017/lib/arm64/libwallpapers-breel-jni.so

    mkdir -p $TMPDIR/$RELEASE/blueline/WallpapersBReel2018/lib/arm64 $TMPDIR/$RELEASE/blueline/WallpapersBReel2018/oat/arm64
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/blueline/WallpapersBReel2018/WallpapersBReel2018.apk -o $TMPDIR/$RELEASE/blueline/WallpapersBReel2018/WallpapersBReel2018.apk
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/blueline/WallpapersBReel2018/lib/arm64/libgdx.so -o $TMPDIR/$RELEASE/blueline/WallpapersBReel2018/lib/arm64/libgdx.so
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/blueline/WallpapersBReel2018/lib/arm64/libwallpapers-breel-2018-jni.so -o $TMPDIR/$RELEASE/blueline/WallpapersBReel2018/lib/arm64/libwallpapers-breel-2018-jni.so
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/blueline/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.odex -o $TMPDIR/$RELEASE/blueline/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.odex
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/blueline/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.vdex -o $TMPDIR/$RELEASE/blueline/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.vdex

  ui_print "Download complete."
  else
    abort "Internet connection is not available. Check the connection and try again."
  fi

  NexusWallpapersStubPrebuilt=$TMPDIR/$RELEASE/sailfish/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk
  NexusWallpapersStubPrebuilt2017=$TMPDIR/$RELEASE/walleye/NexusWallpapersStubPrebuilt2017/NexusWallpapersStubPrebuilt2017.apk
  NexusWallpapersStubPrebuilt2018=$TMPDIR/$RELEASE/blueline/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk

  WallpapersBReellibgdx=$TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64/libgdx.so
  WallpapersBReellibgeswallpapers=$TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
  WallpapersBReel=$TMPDIR/$RELEASE/sailfish/WallpapersBReel/WallpapersBReel.apk
  WallpapersUsTwo=$TMPDIR/$RELEASE/sailfish/WallpapersUsTwo/WallpapersUsTwo.apk

  WallpapersBReel2017libgdx=$TMPDIR/$RELEASE/walleye/WallpapersBReel2017/lib/arm64/libgdx.so
  WallpapersBReel2017libwallpapers=$TMPDIR/$RELEASE/walleye/WallpapersBReel2017/lib/arm64/libwallpapers-breel-jni.so
  WallpapersBReel2017=$TMPDIR/$RELEASE/walleye/WallpapersBReel2017/WallpapersBReel2017.apk

  WallpapersBReel2018libgdx=$TMPDIR/$RELEASE/blueline/WallpapersBReel2018/lib/arm64/libgdx.so
  WallpapersBReel2018libwallpapers=$TMPDIR/$RELEASE/blueline/WallpapersBReel2018/lib/arm64/libwallpapers-breel-2018-jni.so
  WallpapersBReel2018odex=$TMPDIR/$RELEASE/blueline/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.odex
  WallpapersBReel2018vdex=$TMPDIR/$RELEASE/blueline/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.vdex
  WallpapersBReel2018=$TMPDIR/$RELEASE/blueline/WallpapersBReel2018/WallpapersBReel2018.apk

  ui_print "Installation..."

  mkdir -p $MODPATH/system/product/app/NexusWallpapersStubPrebuilt
  cp -af $NexusWallpapersStubPrebuilt $MODPATH/system/product/app/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk
  mkdir -p $MODPATH/system/product/app/NexusWallpapersStubPrebuilt2017
  cp -af $NexusWallpapersStubPrebuilt2017 $MODPATH/system/product/app/NexusWallpapersStubPrebuilt2017/NexusWallpapersStubPrebuilt2017.apk
  mkdir -p $MODPATH/system/product/app/NexusWallpapersStubPrebuilt2018
  cp -af $NexusWallpapersStubPrebuilt2018 $MODPATH/system/product/app/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk

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

  mkdir -p $MODPATH/system/product/app/WallpapersBReel2018/lib/arm64 $MODPATH/system/product/app/WallpapersBReel2018/oat/arm64
  cp -af $WallpapersBReel2018libgdx $MODPATH/system/product/app/WallpapersBReel2018/lib/arm64/libgdx.so
  cp -af $WallpapersBReel2018libwallpapers $MODPATH/system/product/app/WallpapersBReel2018/lib/arm64/libwallpapers-breel-2018-jni.so
  cp -af $WallpapersBReel2018odex $MODPATH/system/product/app/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.odex
  cp -af $WallpapersBReel2018vdex $MODPATH/system/product/app/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.vdex
  cp -af $WallpapersBReel2018 $MODPATH/system/product/app/WallpapersBReel2018/WallpapersBReel2018.apk

ui_print "Installation complete."