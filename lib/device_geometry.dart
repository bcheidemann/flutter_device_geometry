import 'dart:io';

import 'package:device_geometry/platforms/ios.dart';
import 'package:device_geometry/widgets/provider.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/widgets.dart';

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
  static Future<DeviceGeometry?>? _future;
  final DisplayGeometry display;

  const DeviceGeometry({required this.display});

  static Future<DeviceGeometry?> get() async {
    return _future ??= _getImpl();
  }

  static Future<DeviceGeometry?> _getImpl() async {
    if (Platform.isIOS) {
      return (await DeviceInfoPlugin().iosInfo).geometry;
    }
    return null;
  }

  static DeviceGeometry? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<DeviceGeometryProvider>()
        ?.geometry;
  }

  static DeviceGeometry? of(BuildContext context) {
    final DeviceGeometryProvider? provider = context
        .dependOnInheritedWidgetOfExactType<DeviceGeometryProvider>();
    assert(provider != null, 'No DeviceGeometryProvider found');
    return provider!.geometry;
  }
}
