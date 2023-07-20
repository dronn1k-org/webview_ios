//
//  WebViewNavigationDelegate.swift
//  Runner
//
//  Created by Owner on 07.07.2023.
//

import WebKit

class WebViewNavigationDelegate: NSObject, WKNavigationDelegate {
    let cert: Data?

    init(cert: Data?) {
        self.cert = cert
    }
    
    func webView(_ webView: WKWebView, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        guard let cert = self.cert else {
            completionHandler(.performDefaultHandling, nil)
            return
        }

        AsyncAuthChallengeHandler.webViewAddTrusted(certificates: [cert]).handle((challenge, completionHandler))
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        var event: [String: Any] = [:]
        event["type"] = "navigationChange"
        if let eventSink = FLEventHandler.eventSink {
            if let url = navigationAction.request.url {
                event["navigationType"] = "action"
                event["urlAddress"] = url.absoluteString
            }
            eventSink(event)
        }
        decisionHandler(.allow)
    }
    
    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        var event: [String: Any] = [:]

        if let eventSink = FLEventHandler.eventSink {
            if let url = navigationResponse.response.url {
                event["type"] = "navigationChange"
                event["urlAddress"] = url.absoluteString
                event["navigationType"] = "response"
            }
            eventSink(event)
        }


        decisionHandler(.allow)
    }

    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        var errorEvent: [String: Any] = [:]
        let localError = error as NSError

        errorEvent["code"] = localError.code
        errorEvent["description"] = localError.localizedDescription
        errorEvent["errorType"] = localError.domain

        if let urlError = error as? URLError {
            errorEvent["type"] = "navigationError"
            errorEvent["url"] = urlError.failureURLString
        } else {
            errorEvent["type"] = "error"
        }

        if let eventSink = FLEventHandler.eventSink {
            eventSink(errorEvent)
        }
    }

    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("didFail")
        print(error.localizedDescription)
    }

    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        if let eventSink = FLEventHandler.eventSink {
            var event: [String: Any] = [:]

            event["type"] = "navigationChange"
            event["navigationType"] = "start"

            eventSink(event)
        }
    }

    func webView(_ webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!) {
        if let eventSink = FLEventHandler.eventSink {
            var event: [String: Any] = [:]

            event["type"] = "navigationChange"
            event["navigationType"] = "redirect"

            eventSink(event)
        }
    }

    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        if let eventSink = FLEventHandler.eventSink {
            var event: [String: Any] = [:]
            
            event["type"] = "navigationChange"
            event["navigationType"] = "commit"
            
            eventSink(event)
        }
    }
    
}
