import 'package:device_geometry/device_geometry.dart';
import 'package:flutter/widgets.dart';

class DeviceGeometryProvider extends InheritedWidget {
  final DeviceGeometry? geometry;

  const DeviceGeometryProvider({
    super.key,
    required this.geometry,
    required super.child,
  });

  @override
  bool updateShouldNotify(DeviceGeometryProvider oldWidget) =>
      geometry != oldWidget.geometry;
}
