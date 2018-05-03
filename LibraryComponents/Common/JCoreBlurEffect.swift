//
//  JCoreBlurEffect.swift
//  JCore-ui
//
//  Created by Josue Hernandez Gonzalez on 03/05/2018.
//

import UIKit

class JCoreBlurEffect: NSObject {
    
    public class func blurEffect(view: UIView!) -> Void {
        
        //only apply the blur if the user hasn't disabled transparency effects
        if !UIAccessibilityIsReduceTransparencyEnabled() {
            view.backgroundColor = UIColor.clear
            
            let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            //always fill the view
            blurEffectView.frame = view.bounds
            blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            
            view.addSubview(blurEffectView) //if you have more UIViews, use an insertSubview API to place it where needed
        } else {
            view.backgroundColor = UIColor.black
        }
    }
    
    public class func takeSnapOfView(view: UIView) -> UIImage! {
        
        UIGraphicsBeginImageContext(CGSize(width: view.frame.size.width, height: view.frame.size.height))
        
        view.drawHierarchy(in: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height), afterScreenUpdates: true)
        
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return image
    }

}
