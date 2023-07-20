import Flutter
import UIKit

public class WebviewIosPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let viewFactory = FLWebViewFactory(messenger: registrar.messenger())
    registrar.register(viewFactory, withId: "dronn1k.web-view-id")

    let eventChannel = FlutterEventChannel(name: "dronn1k.web-view/event-channel", binaryMessenger: registrar.messenger())
    eventChannel.setStreamHandler(FLEventHandler())
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
