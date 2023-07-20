//
//  FLEventHandler.swift
//  Runner
//
//  Created by Owner on 07.07.2023.
//

import Flutter
import UIKit

public class FLEventHandler: NSObject, FlutterStreamHandler {
    static var eventSink: FlutterEventSink?

    public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        FLEventHandler.eventSink = events
        return nil
    }

    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        FLEventHandler.eventSink = nil
        return nil
    }

    func sendEvent(event: [String: Any]) {
        FLEventHandler.eventSink?(event)
    }
}
