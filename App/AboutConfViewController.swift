//
//  AboutConfViewController.swift
//  App
//
//  Created by Екатерина on 17.05.16.
//  Copyright © 2016 Екатерина. All rights reserved.
//

import UIKit

class AboutConfViewController: UIViewController {

    @IBOutlet weak var htmlPage: UIWebView!
    
    
    override func viewDidAppear(animated: Bool) {
        self.htmlPage.loadHTMLString("<b>QQQQQQQ</b>", baseURL: nil)
    }
    
//    override func override DidLoad()
//    {
//        super.viewDidLoad(string: "https://www.yandex.ru")
//        var URL = NSURL
//    }

    
    func sendData( item:ClsTimeTableItem) -> Void{
        self.showHtml()
    }
    
    func showHtml() -> Void {
        //self.htmlPage.loadHTMLString("<b>QQQQQQQ</b>", baseURL: nil)
        
        
    }
    
}
