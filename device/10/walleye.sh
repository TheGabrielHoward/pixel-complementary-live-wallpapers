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
    mkdir -p $TMPDIR/$RELEASE/blueline/NexusWallpapersStubPrebuilt2018
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/blueline/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk -o $TMPDIR/$RELEASE/blueline/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk
    mkdir -p $TMPDIR/$RELEASE/flame/NexusWallpapersStubPrebuilt2019
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/flame/NexusWallpapersStubPrebuilt2019/NexusWallpapersStubPrebuilt2019.apk -o $TMPDIR/$RELEASE/flame/NexusWallpapersStubPrebuilt2019/NexusWallpapersStubPrebuilt2019.apk

    mkdir -p $TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/2019-10-06/sailfish/WallpapersBReel/WallpapersBReel.apk -o $TMPDIR/$RELEASE/sailfish/WallpapersBReel/WallpapersBReel.apk
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/2019-10-06/sailfish/WallpapersBReel/lib/arm64/libgdx.so -o $TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64/libgdx.so
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/2019-10-06/sailfish/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so -o $TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
    mkdir -p $TMPDIR/$RELEASE/sailfish/WallpapersUsTwo
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/2019-10-06/sailfish/WallpapersUsTwo/WallpapersUsTwo.apk -o $TMPDIR/$RELEASE/sailfish/WallpapersUsTwo/WallpapersUsTwo.apk
    
    mkdir -p $TMPDIR/$RELEASE/blueline/WallpapersBReel2018/lib/arm64 $TMPDIR/$RELEASE/blueline/WallpapersBReel2018/oat/arm64
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/blueline/WallpapersBReel2018/WallpapersBReel2018.apk -o $TMPDIR/$RELEASE/blueline/WallpapersBReel2018/WallpapersBReel2018.apk
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/blueline/WallpapersBReel2018/lib/arm64/libgdx.so -o $TMPDIR/$RELEASE/blueline/WallpapersBReel2018/lib/arm64/libgdx.so
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/blueline/WallpapersBReel2018/lib/arm64/libwallpapers-breel-2018-jni.so -o $TMPDIR/$RELEASE/blueline/WallpapersBReel2018/lib/arm64/libwallpapers-breel-2018-jni.so
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/blueline/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.odex -o $TMPDIR/$RELEASE/blueline/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.odex
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/blueline/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.vdex -o $TMPDIR/$RELEASE/blueline/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.vdex

    mkdir -p $TMPDIR/$RELEASE/flame/WallpapersBReel2019/lib/arm64 $TMPDIR/$RELEASE/flame/WallpapersBReel2019/oat/arm64
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/flame/WallpapersBReel2019/WallpapersBReel2019.apk -o $TMPDIR/$RELEASE/flame/WallpapersBReel2019/WallpapersBReel2019.apk
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/flame/WallpapersBReel2019/lib/arm64/libgdx.so -o $TMPDIR/$RELEASE/flame/WallpapersBReel2019/lib/arm64/libgdx.so
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/flame/WallpapersBReel2019/oat/arm64/WallpapersBReel2019.odex -o $TMPDIR/$RELEASE/flame/WallpapersBReel2019/oat/arm64/WallpapersBReel2019.odex
    $MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/flame/WallpapersBReel2019/oat/arm64/WallpapersBReel2019.vdex -o $TMPDIR/$RELEASE/flame/WallpapersBReel2019/oat/arm64/WallpapersBReel2019.vdex

    #mkdir -p $TMPDIR/$RELEASE/flame/PixelLiveWallpaperPrebuilt/oat/arm64
    #$MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/flame/PixelLiveWallpaperPrebuilt/PixelLiveWallpaperPrebuilt.apk -o $TMPDIR/$RELEASE/flame/PixelLiveWallpaperPrebuilt/PixelLiveWallpaperPrebuilt.apk
    #$MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/flame/PixelLiveWallpaperPrebuilt/oat/arm64/PixelLiveWallpaperPrebuilt.odex -o $TMPDIR/$RELEASE/flame/PixelLiveWallpaperPrebuilt/oat/arm64/PixelLiveWallpaperPrebuilt.odex
    #$MODPATH/curl -k -L https://gitlab.com/igor-dyatlov/pixel-complementary-live-wallpapers/raw/master/$RELEASE/$SECURITY_PATCH_VERSION/flame/PixelLiveWallpaperPrebuilt/oat/arm64/PixelLiveWallpaperPrebuilt.vdex -o $TMPDIR/$RELEASE/flame/PixelLiveWallpaperPrebuilt/oat/arm64/PixelLiveWallpaperPrebuilt.vdex

  ui_print "Download complete."
  else
    abort "Internet connection is not available. Check the connection and try again."
  fi

  NexusWallpapersStubPrebuilt=$TMPDIR/$RELEASE/sailfish/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk
  NexusWallpapersStubPrebuilt2018=$TMPDIR/$RELEASE/blueline/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk
  NexusWallpapersStubPrebuilt2019=$TMPDIR/$RELEASE/flame/NexusWallpapersStubPrebuilt2019/NexusWallpapersStubPrebuilt2019.apk

  WallpapersBReellibgdx=$TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64/libgdx.so
  WallpapersBReellibgeswallpapers=$TMPDIR/$RELEASE/sailfish/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
  WallpapersBReel=$TMPDIR/$RELEASE/sailfish/WallpapersBReel/WallpapersBReel.apk
  WallpapersUsTwo=$TMPDIR/$RELEASE/sailfish/WallpapersUsTwo/WallpapersUsTwo.apk

  WallpapersBReel2018libgdx=$TMPDIR/$RELEASE/blueline/WallpapersBReel2018/lib/arm64/libgdx.so
  WallpapersBReel2018libwallpapers=$TMPDIR/$RELEASE/blueline/WallpapersBReel2018/lib/arm64/libwallpapers-breel-2018-jni.so
  WallpapersBReel2018odex=$TMPDIR/$RELEASE/blueline/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.odex
  WallpapersBReel2018vdex=$TMPDIR/$RELEASE/blueline/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.vdex
  WallpapersBReel2018=$TMPDIR/$RELEASE/blueline/WallpapersBReel2018/WallpapersBReel2018.apk

  WallpapersBReel2019libgdx=$TMPDIR/$RELEASE/flame/WallpapersBReel2019/lib/arm64/libgdx.so
  WallpapersBReel2019odex=$TMPDIR/$RELEASE/flame/WallpapersBReel2019/oat/arm64/WallpapersBReel2019.odex
  WallpapersBReel2019vdex=$TMPDIR/$RELEASE/flame/WallpapersBReel2019/oat/arm64/WallpapersBReel2019.vdex
  WallpapersBReel2019=$TMPDIR/$RELEASE/flame/WallpapersBReel2019/WallpapersBReel2019.apk

  #PixelLiveWallpaperPrebuiltodex=$TMPDIR/$RELEASE/flame/PixelLiveWallpaperPrebuilt/oat/arm64/PixelLiveWallpaperPrebuilt.odex
  #PixelLiveWallpaperPrebuiltvdex=$TMPDIR/$RELEASE/flame/PixelLiveWallpaperPrebuilt/oat/arm64/PixelLiveWallpaperPrebuilt.vdex
  #PixelLiveWallpaperPrebuilt=$TMPDIR/$RELEASE/flame/PixelLiveWallpaperPrebuilt/PixelLiveWallpaperPrebuilt.apk

  ui_print "Installation..."

  mkdir -p $MODPATH/system/product/app/NexusWallpapersStubPrebuilt
  cp -af $NexusWallpapersStubPrebuilt $MODPATH/system/product/app/NexusWallpapersStubPrebuilt/NexusWallpapersStubPrebuilt.apk
  mkdir -p $MODPATH/system/product/app/NexusWallpapersStubPrebuilt2018
  cp -af $NexusWallpapersStubPrebuilt2018 $MODPATH/system/product/app/NexusWallpapersStubPrebuilt2018/NexusWallpapersStubPrebuilt2018.apk
  mkdir -p $MODPATH/system/product/app/NexusWallpapersStubPrebuilt2019
  cp -af $NexusWallpapersStubPrebuilt2019 $MODPATH/system/product/app/NexusWallpapersStubPrebuilt2019/NexusWallpapersStubPrebuilt2019.apk

  mkdir -p $MODPATH/system/product/app/WallpapersBReel/lib/arm64
  cp -af $WallpapersBReellibgdx $MODPATH/system/product/app/WallpapersBReel/lib/arm64/libgdx.so
  cp -af $WallpapersBReellibgeswallpapers $MODPATH/system/product/app/WallpapersBReel/lib/arm64/libgeswallpapers-jni.so
  cp -af $WallpapersBReel $MODPATH/system/product/app/WallpapersBReel/WallpapersBReel.apk
  
  mkdir -p $MODPATH/system/product/app/WallpapersUsTwo
  cp -af $WallpapersUsTwo $MODPATH/system/product/app/WallpapersUsTwo/WallpapersUsTwo.apk
  
  mkdir -p $MODPATH/system/product/app/WallpapersBReel2018/lib/arm64 $MODPATH/system/product/app/WallpapersBReel2018/oat/arm64
  cp -af $WallpapersBReel2018libgdx $MODPATH/system/product/app/WallpapersBReel2018/lib/arm64/libgdx.so
  cp -af $WallpapersBReel2018libwallpapers $MODPATH/system/product/app/WallpapersBReel2018/lib/arm64/libwallpapers-breel-2018-jni.so
  cp -af $WallpapersBReel2018odex $MODPATH/system/product/app/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.odex
  cp -af $WallpapersBReel2018vdex $MODPATH/system/product/app/WallpapersBReel2018/oat/arm64/WallpapersBReel2018.vdex
  cp -af $WallpapersBReel2018 $MODPATH/system/product/app/WallpapersBReel2018/WallpapersBReel2018.apk

  mkdir -p $MODPATH/system/product/app/WallpapersBReel2019/lib/arm64 $MODPATH/system/product/app/WallpapersBReel2019/oat/arm64
  cp -af $WallpapersBReel2019libgdx $MODPATH/system/product/app/WallpapersBReel2019/lib/arm64/libgdx.so
  cp -af $WallpapersBReel2019odex $MODPATH/system/product/app/WallpapersBReel2019/oat/arm64/WallpapersBReel2019.odex
  cp -af $WallpapersBReel2019vdex $MODPATH/system/product/app/WallpapersBReel2019/oat/arm64/WallpapersBReel2019.vdex
  cp -af $WallpapersBReel2019 $MODPATH/system/product/app/WallpapersBReel2019/WallpapersBReel2019.apk

  #mkdir -p $MODPATH/system/product/priv-app/PixelLiveWallpaperPrebuilt/oat/arm64
  #cp -af $WallpapersBReel2019odex $MODPATH/system/product/priv-app/PixelLiveWallpaperPrebuilt/oat/arm64/PixelLiveWallpaperPrebuilt.odex
  #cp -af $WallpapersBReel2019vdex $MODPATH/system/product/priv-app/PixelLiveWallpaperPrebuilt/oat/arm64/PixelLiveWallpaperPrebuilt.vdex
  #cp -af $PixelLiveWallpaperPrebuilt $MODPATH/system/product/priv-app/PixelLiveWallpaperPrebuilt/PixelLiveWallpaperPrebuilt.apk

ui_print "Installation complete."