import 'dart:io';

import 'package:device_geometry/platforms/ios.dart';
import 'package:device_info_plus/device_info_plus.dart';

class DisplayCornerRadii {
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;

  const DisplayCornerRadii({
    required this.topLeft,
    required this.topRight,
    required this.bottomLeft,
    required this.bottomRight,
  });
}

class DisplayGeometry {
  final DisplayCornerRadii cornerRadii;

  const DisplayGeometry({required this.cornerRadii});
}

class DeviceGeometry {
  final DisplayGeometry display;

  const DeviceGeometry({required this.display});

  Future<DeviceGeometry?> get() async {
    if (Platform.isIOS) {
      return (await DeviceInfoPlugin().iosInfo).geometry;
    }
    return null;
  }
}
