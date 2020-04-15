  ui_print "****************************************************"
  ui_print "     Magisk Pixel Complementary Live Wallpapers     "
  ui_print "                by @igor-dyatlov                    "
  ui_print "****************************************************"

  ui_print "Installing  Module!"

  DEVICE=`getprop ro.product.device`
  RELEASE=`getprop ro.build.version.release`
  SECURITY_PATCH_VERSION=`getprop ro.build.version.security_patch`

  ui_print "Performing compatibility check..."
  ui_print "Device: "$DEVICE
  ui_print "Android version: "$RELEASE
  ui_print "Security patch version: "$SECURITY_PATCH_VERSION

  if [ $DEVICE != "sailfish" ] && [ $DEVICE != "marlin" ] && [ $DEVICE != "walleye" ] && [ $DEVICE != "taimen" ] && [ $DEVICE != "blueline" ] && [ $DEVICE != "crosshatch" ] && [ $DEVICE != "sargo" ] && [ $DEVICE != "bonito" ] && [ $DEVICE != "flame" ] && [ $DEVICE != "coral" ]; then
    abort "   => Device '"$DEVICE"' is not supported"
  fi
  
  if [ $RELEASE != "9" ] && [ $RELEASE != "10" ]; then
    abort "   => Android version '"$RELEASE"' is not supported"
  fi
  
  if [ $RELEASE == "9" ] && [ $RELEASE = "10" ]; then
    RELEASE=$RELEASE/$SECURITY_PATCH_VERSION
  fi

  ui_print "Your device is compatible. Continue with installation."

case $DEVICE in
  sailfish)
    case $RELEASE in
      9)
        . $MODPATH/device/9/sailfish.sh
      ;;
      10)
        . $MODPATH/device/10/sailfish.sh
      ;;
      *)
        ui_print "Your device is compatible. Continue with installation."
      ;;
    esac
  ;;
  marlin)
    case $RELEASE in
      9)
        . $MODPATH/device/9/marlin.sh
      ;;
      10)
        . $MODPATH/device/10/marlin.sh
      ;;
      *)
        ui_print "Your device is compatible. Continue with installation."
      ;;
    esac
  ;;
  walleye)
    case $RELEASE in
      9)
        . $MODPATH/device/9/walleye.sh
      ;;
      10)
        . $MODPATH/device/10/walleye.sh
      ;;
      *)
        ui_print "Your device is compatible. Continue with installation."
      ;;
    esac
  ;;
  taimen)
    case $RELEASE in
      9)
        . $MODPATH/device/9/taimen.sh
      ;;
      10)
        . $MODPATH/device/10/taimen.sh
      ;;
      *)
        ui_print "Your device is compatible. Continue with installation."
      ;;
    esac
  ;;
  blueline)
    case $RELEASE in
      9)
        . $MODPATH/device/9/blueline.sh
      ;;
      10)
        . $MODPATH/device/10/blueline.sh
      ;;
      *)
        ui_print "Your device is compatible. Continue with installation."
      ;;
    esac
  ;;
  crosshatch)
    case $RELEASE in
      9)
        . $MODPATH/device/9/crosshatch.sh
      ;;
      10)
        . $MODPATH/device/10/crosshatch.sh
      ;;
      *)
        ui_print "Your device is compatible. Continue with installation."
      ;;
    esac
  ;;
  sargo)
    case $RELEASE in
      9)
        . $MODPATH/device/9/sargo.sh
      ;;
      10)
        . $MODPATH/device/10/sargo.sh
      ;;
      *)
        ui_print "Your device is compatible. Continue with installation."
      ;;
    esac
  ;;
  bonito)
    case $RELEASE in
      9)
        . $MODPATH/device/9/bonito.sh
      ;;
      10)
        . $MODPATH/device/10/bonito.sh
      ;;
      *)
        ui_print "Your device is compatible. Continue with installation."
      ;;
    esac
  ;;
  flame)
    case $RELEASE in
      10)
        . $MODPATH/device/10/flame.sh
      ;;
      *)
        ui_print "Your device is compatible. Continue with installation."
      ;;
    esac
  ;;
  coral)
    case $RELEASE in
      10)
        . $MODPATH/device/10/coral.sh
      ;;
      *)
        ui_print "Your device is compatible. Continue with installation."
      ;;
    esac
  ;;
  *)
  ui_print "Unsupported device."
  ;;
esac
