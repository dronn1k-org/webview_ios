//
//  WebViewController.swift
//  Runner
//
//  Created by Owner on 30.06.2023.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    var arguments: WebViewArguments!
    
    var wkWebView: WKWebView!
    var navDelegate: WebViewNavigationDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navDelegate = WebViewNavigationDelegate(cert: arguments.cert)

        settingLayout()
        
        /// Нужно определить navigationdelegate у webview

        let url = URL(string: arguments.urlAddress)!
        wkWebView.load(URLRequest(url: url))
        wkWebView.allowsBackForwardNavigationGestures = true
    }
    
    func settingLayout() {
        wkWebView = WKWebView()
        wkWebView.translatesAutoresizingMaskIntoConstraints = false
        wkWebView.navigationDelegate = navDelegate
        view.addSubview(wkWebView)

        NSLayoutConstraint.activate([
            wkWebView.heightAnchor.constraint(equalToConstant: CGFloat(truncating: arguments.height)),
            wkWebView.widthAnchor.constraint(equalToConstant: CGFloat(truncating: arguments.width)),
        ])
    }
}

