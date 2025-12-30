import 'package:device_geometry/device_geometry.dart';
import 'package:flutter/widgets.dart';

class DeviceGeometryBuilder extends StatelessWidget {
  final AsyncWidgetBuilder<DeviceGeometry?> builder;

  const DeviceGeometryBuilder({super.key, required this.builder});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: DeviceGeometry.get(), builder: builder);
  }
}
