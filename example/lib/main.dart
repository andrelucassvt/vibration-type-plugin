import 'package:flutter/material.dart';
import 'package:vibration_type/vibration_type_export.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _vibrationTypePlugin = VibrationType();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Vibration type',
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Notification',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                _buttonVibration(
                  name: 'Success',
                  color: Colors.green,
                  onTap: () {
                    _vibrationTypePlugin.notificationVibration(
                        NotificationVibrationType.success);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                _buttonVibration(
                  name: 'Error',
                  color: Colors.red,
                  onTap: () {
                    _vibrationTypePlugin
                        .notificationVibration(NotificationVibrationType.error);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                _buttonVibration(
                  name: 'Warning',
                  color: const Color.fromARGB(255, 238, 214, 6),
                  onTap: () {
                    _vibrationTypePlugin.notificationVibration(
                        NotificationVibrationType.warning);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Impact',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  spacing: 15.0, // gap between adjacent chips
                  runSpacing: 15.0,
                  children: [
                    _buttonVibration(
                        name: 'Rigid',
                        onTap: () {
                          _vibrationTypePlugin
                              .impactVibration(ImpactVibrationType.rigid);
                        },
                        color: Colors.red,
                        height: 100,
                        width: 100),
                    _buttonVibration(
                        name: 'Soft',
                        onTap: () {
                          _vibrationTypePlugin
                              .impactVibration(ImpactVibrationType.soft);
                        },
                        color: Colors.green,
                        height: 100,
                        width: 100),
                    _buttonVibration(
                        name: 'Medium',
                        onTap: () {
                          _vibrationTypePlugin
                              .impactVibration(ImpactVibrationType.medium);
                        },
                        color: Colors.lightBlueAccent,
                        height: 100,
                        width: 100),
                    _buttonVibration(
                        name: 'Heavy',
                        onTap: () {
                          _vibrationTypePlugin
                              .impactVibration(ImpactVibrationType.heavy);
                        },
                        color: Colors.purple,
                        height: 100,
                        width: 100),
                    _buttonVibration(
                        name: 'Light',
                        onTap: () {
                          _vibrationTypePlugin
                              .impactVibration(ImpactVibrationType.light);
                        },
                        color: Colors.blue,
                        height: 100,
                        width: 100),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buttonVibration({
    required String name,
    required VoidCallback onTap,
    required Color color,
    double? height,
    double? width,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 80,
        width: width ?? 300,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
