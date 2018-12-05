//
//  ViewController.swift
//  webview
//
//  Created by Confidence on 8/20/18.
//  Copyright © 2018 confident. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKUIDelegate,WKNavigationDelegate {
    
    @IBOutlet weak var webview: WKWebView!
    @IBOutlet weak var activityindicator: UIActivityIndicatorView!
    
    let webconfiguration = WKWebViewConfiguration()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webview.navigationDelegate = self
        webview.uiDelegate = self
        activityindicator.startAnimating()
      
        
    }
    

    
    override func viewDidAppear(_ animated: Bool) {
        
        webconfiguration.allowsInlineMediaPlayback = true
        activityindicator.hidesWhenStopped = true
        
        let myurl = URL(string: "https://www.google.com/")
        let urlrequest = URLRequest(url: myurl!)
        
        webview.load(urlrequest)
    }

    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        activityindicator.startAnimating()
        
        webview.isUserInteractionEnabled = false
        
        print("web view start .......")

    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
       
        activityindicator.stopAnimating()
        webview.isUserInteractionEnabled = true
         print("web view finish......")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

