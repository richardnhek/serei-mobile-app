import 'package:flutter/material.dart';
import 'package:serei_app/providers/app_provider.dart';

class DeviceUtils {
  static dynamic getResponsive({
    SereiAppProvider sereiAppProvider,
    MediaQueryData mq,
    dynamic onPhone,
    dynamic onTablet,
  }) {
    if (sereiAppProvider.isTablet) {
      return onTablet;
    }
    return onPhone;
  }
}
