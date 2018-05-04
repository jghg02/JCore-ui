//
//  ViewController.swift
//  JCore-ui
//
//  Created by Josue Hernandez on 04/26/2018.
//  Copyright (c) 2018 Josue Hernandez. All rights reserved.
//

import UIKit
import JCore_ui

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlertMessage(_ sender: Any) {
        
        let image: UIImage? = JCoreBlurEffect.takeSnapOfView(view: (UIApplication.shared.keyWindow?.subviews.first)!)
        _ = JCoreAlertView.createJCoreAlertView("This is an Example...", message: "Other message...Other message...Otherjskdhskdhskdhskdhsk XXXXX 4000", image: image).showInView()
        
    }
}

