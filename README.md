This plugin allows Flutter apps for IOS to access the types of vibrations available in the operating system.

## Platform Support

| Android | iOS | MacOS | Web | Linux | Windows |
| :-----: | :-: | :---: | :-: | :---: | :-----: |
|   x    | ✔️  |  x   | x  |  x   |   x   |

## Required:
add to Podfile
```switf
platform :ios, '13.0'
```


## How to use:

```dart
import 'package:vibration_type/vibration_type.dart';
```
## Impact vibration:

```dart
enum ImpactVibrationType { soft, light, medium, heavy, rigid }


VibrationType().impactVibration(ImpactVibrationType.heavy);
```

## Notification vibration:

```dart
enum NotificationVibrationType { success, error, warning }

VibrationType().notificationVibration(NotificationVibrationType.warning);
```


