//
//  ViewController.swift
//  alpapp
//
//  Created by Adrian Linares on 5/20/20.
//  Copyright © 2020 Adrian Linares. All rights reserved.
//

import UIKit
import SafariServices
import WebKit

class ViewController: UIViewController {
    
    @IBAction func Exitapp(_ sender: Any) {
        let alert = UIAlertController(title: "Do you really want to exit the app?", message: nil, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Follow me on Instagram", style: .default, handler: { (_) in print("@adrianlpit")}))
        
        alert.addAction(UIAlertAction(title: "Exit", style: .destructive, handler: { (_) in exit(0)}))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBOutlet var webview: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        webview.load(URLRequest(url: URL(string: "https://www.atncorp.com/firmware")!))
    }

    @IBAction func buttonTapped() {
        
        let vc = SFSafariViewController(url: URL(string: "http://adrianlp.com")!)
        
        present(vc, animated: true)
        
        
    }

}

