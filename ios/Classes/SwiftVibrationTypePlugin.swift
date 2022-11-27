import Flutter
import UIKit
import SwiftUI

public class SwiftVibrationTypePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "vibration_type", binaryMessenger: registrar.messenger())
    let instance = SwiftVibrationTypePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "notificationVibrationSuccess":
      vibrationNotification(type: .success)
    case "notificationVibrationError":
      vibrationNotification(type: .error)
    case "notificationVibrationWarning":
      vibrationNotification(type: .warning)
    case "impactVibrationSoft":
      vibrationImpact(type: .soft)
    case "impactVibrationRigid":
      vibrationImpact(type: .rigid)
    case "impactVibrationMedium":
      vibrationImpact(type: .medium)
    case "impactVibrationHeavy":
      vibrationImpact(type: .heavy)
    case "impactVibrationLight":
      vibrationImpact(type: .light)
    default:
      vibrationNotification(type: .success)
    }
  }

  func vibrationNotification(type: UINotificationFeedbackGenerator.FeedbackType) {
    let impactMed = UINotificationFeedbackGenerator()
    impactMed.notificationOccurred(type)
  }

  func vibrationImpact(type: UIImpactFeedbackGenerator.FeedbackStyle) {
    let impactMed = UIImpactFeedbackGenerator(style: type)
    impactMed.impactOccurred()
  }
}
