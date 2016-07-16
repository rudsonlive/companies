//
//  WebSiteViewController.swift
//  Companies
//
//  Created by Rudson Lima on 7/15/16.
//  Copyright © 2016 Rudson Lima. All rights reserved.
//

import UIKit

class WebSiteViewController: UIViewController, UIWebViewDelegate {

    var company: Company!
    @IBOutlet var webView: UIWebView!
    @IBOutlet var indicatorView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView.delegate = self
        self.title = company.name
        loadUrl()
    }
    
    func loadUrl(){
        let url = NSURL(string: company.site)
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }
    
    func webViewDidStartLoad(webView: UIWebView){
        indicatorView.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView){
        indicatorView.stopAnimating()
    }
}
