//
//  TermsViewController.swift
//  DropboxDemo
//
//  Created by Michael Volovar on 10/15/16.
//  Copyright © 2016 Michael Volovar. All rights reserved.
//

import UIKit

class TermsViewController: UIViewController {
    @IBOutlet weak var webView: UIWebView!
    
    let url = "https://www.dropbox.com/terms?mobile=1"
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // converting url string to NSURL object
        // and placing it in a URL Request
        let requestURL = NSURL(string:url)
        let request = NSURLRequest(url:requestURL! as URL)
        // load it up
        webView.loadRequest(request as URLRequest)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didPressDone(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
}
