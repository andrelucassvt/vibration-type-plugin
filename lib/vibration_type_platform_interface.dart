import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:vibration_type/util/enum/enuns_vibrations.dart';

import 'vibration_type_method_channel.dart';

abstract class VibrationTypePlatform extends PlatformInterface {
  /// Constructs a VibrationTypePlatform.
  VibrationTypePlatform() : super(token: _token);

  static final Object _token = Object();

  static VibrationTypePlatform _instance = MethodChannelVibrationType();

  /// The default instance of [VibrationTypePlatform] to use.
  ///
  /// Defaults to [MethodChannelVibrationType].
  static VibrationTypePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [VibrationTypePlatform] when
  /// they register themselves.
  static set instance(VibrationTypePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> notificationVibration(
      NotificationVibrationType notificationVibrationType) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> impactVibration(ImpactVibrationType impactVibrationType) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
