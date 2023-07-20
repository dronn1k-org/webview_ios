//
//  WebViewArguments.swift
//  Runner
//
//  Created by Owner on 07.07.2023.
//

import Foundation

struct WebViewArguments {
    let width: NSNumber
    let height: NSNumber
    let urlAddress: String
    let cert: Data?
    
    init(width: NSNumber, height: NSNumber, urlAddress: String, cert: Data?) {
        self.width = width
        self.height = height
        self.urlAddress = urlAddress
        self.cert = cert
    }
}
