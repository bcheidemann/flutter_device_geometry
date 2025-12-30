import 'package:device_geometry/device_geometry.dart';
import 'package:device_info_plus/device_info_plus.dart';

extension IosDeviceGeometry on IosDeviceInfo {
  DeviceGeometry? get geometry => switch (utsname.machine) {
    // iPhone X, Xs, Xs Max, 11 Pro, 11 Pro Max
    "iPhone10,3" ||
    "iPhone10,6" ||
    "iPhone11,2" ||
    "iPhone11,4" ||
    "iPhone11,6" ||
    "iPhone12,3" ||
    "iPhone12,5" => DeviceGeometry(
      display: DisplayGeometry(
        cornerRadii: DisplayCornerRadii(
          topLeft: 39.0,
          topRight: 39.0,
          bottomLeft: 39.0,
          bottomRight: 39.0,
        ),
      ),
    ),
    // iPhone Xr, 11
    "iPhone11,8" || "iPhone12,1" => DeviceGeometry(
      display: DisplayGeometry(
        cornerRadii: DisplayCornerRadii(
          topLeft: 41.5,
          topRight: 41.5,
          bottomLeft: 41.5,
          bottomRight: 41.5,
        ),
      ),
    ),
    // iPhone 12 mini, 13 mini
    "iPhone13,1" || "iPhone14,4" => DeviceGeometry(
      display: DisplayGeometry(
        cornerRadii: DisplayCornerRadii(
          topLeft: 44.0,
          topRight: 44.0,
          bottomLeft: 44.0,
          bottomRight: 44.0,
        ),
      ),
    ),
    // iPhone 12, 12 Pro, 13 Pro, 14, 16e
    "iPhone13,2" ||
    "iPhone13,3" ||
    "iPhone14,2" ||
    "iPhone14,7" ||
    "iPhone17,5" => DeviceGeometry(
      display: DisplayGeometry(
        cornerRadii: DisplayCornerRadii(
          topLeft: 47.33,
          topRight: 47.33,
          bottomLeft: 47.33,
          bottomRight: 47.33,
        ),
      ),
    ),
    // iPhone 12 Pro Max, 13 Pro Max, 14 Plus
    "iPhone13,4" || "iPhone14,3" || "iPhone14,8" => DeviceGeometry(
      display: DisplayGeometry(
        cornerRadii: DisplayCornerRadii(
          topLeft: 53.33,
          topRight: 53.33,
          bottomLeft: 53.33,
          bottomRight: 53.33,
        ),
      ),
    ),
    // iPhone 13
    "iPhone14,5" => DeviceGeometry(
      display: DisplayGeometry(
        cornerRadii: DisplayCornerRadii(
          topLeft: 47.33,
          topRight: 47.33,
          bottomLeft: 47.33,
          bottomRight: 47.33,
        ),
      ),
    ),
    // iPhone SE 3rd Gen
    "iPhone14,6" => DeviceGeometry(
      display: DisplayGeometry(
        cornerRadii: DisplayCornerRadii(
          topLeft: 0.0,
          topRight: 0.0,
          bottomLeft: 0.0,
          bottomRight: 0.0,
        ),
      ),
    ),
    // iPhone 14 Pro, 14 Pro Max, 15, 15 Plus, 15 Pro, 15 Pro Max, 16, 16 Plus
    "iPhone15,2" ||
    "iPhone15,3" ||
    "iPhone15,4" ||
    "iPhone15,5" ||
    "iPhone16,1" ||
    "iPhone16,2" ||
    "iPhone17,3" ||
    "iPhone17,4" => DeviceGeometry(
      display: DisplayGeometry(
        cornerRadii: DisplayCornerRadii(
          topLeft: 55.0,
          topRight: 55.0,
          bottomLeft: 55.0,
          bottomRight: 55.0,
        ),
      ),
    ),
    // iPhone 16 Pro, 16 Pro Max, 17, 17 Pro, 17 Pro Max, Air
    "iPhone17,1" ||
    "iPhone17,2" ||
    "iPhone18,1" ||
    "iPhone18,2" ||
    "iPhone18,3" ||
    "iPhone18,4" => DeviceGeometry(
      display: DisplayGeometry(
        cornerRadii: DisplayCornerRadii(
          topLeft: 62.0,
          topRight: 62.0,
          bottomLeft: 62.0,
          bottomRight: 62.0,
        ),
      ),
    ),
    // iPad Pro 11-inch (M5), Pro 13-inch (M5)
    "iPad17,1" || "iPad17,2" || "iPad17,3" || "iPad17,4" => DeviceGeometry(
      display: DisplayGeometry(
        cornerRadii: DisplayCornerRadii(
          topLeft: 30.0,
          topRight: 30.0,
          bottomLeft: 30.0,
          bottomRight: 30.0,
        ),
      ),
    ),
    // iPad mini 7th Gen
    "iPad16,1" || "iPad16,2" => DeviceGeometry(
      display: DisplayGeometry(
        cornerRadii: DisplayCornerRadii(
          topLeft: 21.5,
          topRight: 21.5,
          bottomLeft: 21.5,
          bottomRight: 21.5,
        ),
      ),
    ),
    // iPad 11th Gen
    "iPad15,7" || "iPad15,8" => DeviceGeometry(
      display: DisplayGeometry(
        cornerRadii: DisplayCornerRadii(
          topLeft: 25.0,
          topRight: 25.0,
          bottomLeft: 25.0,
          bottomRight: 25.0,
        ),
      ),
    ),
    // iPad Air 11-inch 7th Gen, Air 13-inch 7th Gen
    "iPad15,3" || "iPad15,4" || "iPad15,5" || "iPad15,6" => DeviceGeometry(
      display: DisplayGeometry(
        cornerRadii: DisplayCornerRadii(
          topLeft: 18.0,
          topRight: 18.0,
          bottomLeft: 18.0,
          bottomRight: 18.0,
        ),
      ),
    ),
    _ => null,
  };
}
