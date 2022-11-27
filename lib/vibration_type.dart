import 'package:vibration_type/util/enum/enuns_vibrations.dart';

import 'vibration_type_platform_interface.dart';

class VibrationType {
  Future<void> notificationVibration(
          NotificationVibrationType notificationVibrationType) =>
      VibrationTypePlatform.instance
          .notificationVibration(notificationVibrationType);

  Future<void> impactVibration(ImpactVibrationType impactVibrationType) =>
      VibrationTypePlatform.instance.impactVibration(impactVibrationType);
}
