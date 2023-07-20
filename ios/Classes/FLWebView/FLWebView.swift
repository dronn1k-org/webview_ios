//
//  FLWebView.swift
//  Runner
//
//  Created by Owner on 30.06.2023.
//

import WebKit
import UIKit
import Flutter

class FLWebView: NSObject, FlutterPlatformView {
    private var _view: UIView
    
    var webViewCtrl: WebViewController!

    init(
        frame: CGRect,
        viewIdentifier viewId: Int64,
        arguments args: Any?,
        binaryMessenger messenger: FlutterBinaryMessenger?
    ) {
        _view = UIView()
        
        
        super.init()
        
        print(args!)
        
        let parsedArgs = try! _getArguments(arguments: args)
        // iOS views can be created here
        createNativeView(view: _view, arguments: parsedArgs!)
    }
    
    private func _getArguments(arguments args: Any?) throws -> WebViewArguments? {
        guard let argsDict = args as? [String: Any] else {
            throw WebViewErrors.argumentsAreEmpty
        }

        guard let urlAddress = argsDict["urlAddress"] as? String, !urlAddress.isEmpty else {
            throw WebViewErrors.urlAddressIsEmpty
        }

        guard let sizeDict = argsDict["size"] as? [String: NSNumber] else {
            throw WebViewErrors.sizeIsEmpty
        }

        let certBase64 = argsDict["cert"] as? String
        let certData: Data? = certBase64 != nil ? Data(base64Encoded: certBase64!) : nil

        return WebViewArguments(
            width: sizeDict["width"]!,
            height: sizeDict["height"]!,
            urlAddress: urlAddress,
            cert: certData
        )
    }

    func view() -> UIView {
        return _view
    }

    
    
    func createNativeView(view _view: UIView, arguments: WebViewArguments){
        webViewCtrl = WebViewController()
        webViewCtrl.arguments = arguments
        _view.addSubview(webViewCtrl.view)
    }
}
