//
//  JCoreUIViewController.swift
//  JCore-ui_Example
//
//  Created by Josue Hernandez Gonzalez on 04/05/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import JCore_ui

class JCoreUIViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "JCoreUI"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func showAlertView(_ sender: Any) {
        let image: UIImage? = JCoreBlurEffect.takeSnapOfView(view: (UIApplication.shared.keyWindow?.subviews.first)!)
        _ = JCoreAlertView.createJCoreAlertView("This is an Example...", message: "Other message...Other message...Otherjskdhskdhskdhskdhsk XXXXX 4000", image: image).showInView()
    }
    
    @IBAction func showLoading(_ sender: Any) {
        let image: UIImage? = JCoreBlurEffect.takeSnapOfView(view: (UIApplication.shared.keyWindow?.subviews.first)!)
        _ = JCoreLoaderView.createJloader(self.view, hideNavitagionBar: true, cancellable: true, withBlur: true, image: image)
    }
    
}
