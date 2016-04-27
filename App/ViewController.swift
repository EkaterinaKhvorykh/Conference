//
//  ViewController.swift
//  App
//
//  Created by Екатерина on 30.11.15.
//  Copyright © 2015 Екатерина. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png"))
        // Do any additional setup after loading the view, typically from a nib.
        let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
        backgroundImage.image = UIImage(named: "back2.jpg")
        self.view.insertSubview(backgroundImage, atIndex: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var ConfName: UILabel!
    @IBOutlet weak var ConfDescription: UILabel!
   
    @IBAction func BTime(sender: UIButton) {}
    

}


