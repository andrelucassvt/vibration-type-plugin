#import "VibrationTypePlugin.h"
#if __has_include(<vibration_type/vibration_type-Swift.h>)
#import <vibration_type/vibration_type-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "vibration_type-Swift.h"
#endif

@implementation VibrationTypePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftVibrationTypePlugin registerWithRegistrar:registrar];
}
@end
