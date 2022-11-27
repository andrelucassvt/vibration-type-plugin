import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:vibration_type/util/enum/enuns_vibrations.dart';

import 'vibration_type_platform_interface.dart';

/// An implementation of [VibrationTypePlatform] that uses method channels.
class MethodChannelVibrationType extends VibrationTypePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('vibration_type');

  @override
  Future<void> notificationVibration(
      NotificationVibrationType notificationVibrationType) async {
    switch (notificationVibrationType) {
      case NotificationVibrationType.success:
        methodChannel.invokeMethod<void>('notificationVibrationSuccess');
        break;
      case NotificationVibrationType.error:
        methodChannel.invokeMethod<void>('notificationVibrationError');
        break;
      case NotificationVibrationType.warning:
        methodChannel.invokeMethod<void>('notificationVibrationWarning');
        break;
    }
  }

  @override
  Future<void> impactVibration(ImpactVibrationType impactVibrationType) async {
    switch (impactVibrationType) {
      case ImpactVibrationType.soft:
        methodChannel.invokeMethod<void>('impactVibrationSoft');
        break;
      case ImpactVibrationType.rigid:
        methodChannel.invokeMethod<void>('impactVibrationRigid');
        break;
      case ImpactVibrationType.medium:
        methodChannel.invokeMethod<void>('impactVibrationMedium');
        break;
      case ImpactVibrationType.heavy:
        methodChannel.invokeMethod<void>('impactVibrationHeavy');
        break;
      case ImpactVibrationType.light:
        methodChannel.invokeMethod<void>('impactVibrationLight');
        break;
    }
  }

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
