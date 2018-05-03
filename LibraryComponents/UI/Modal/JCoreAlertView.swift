//
//  JCoreAlertView.swift
//  JCore-ui
//
//  Created by Josue Hernandez Gonzalez on 03/05/2018.
//

import UIKit

class JCoreAlertView: UIView {

    var title: String?
    var message: String?
    var cancelBtnTitle: String?
    var otherBtnTitle: String?
    
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var titleMessage: UILabel!
    @IBOutlet weak var messageAlert: UILabel!
    @IBOutlet weak var cancelButton: UIButton!
    
    struct StaticData {
        static var framewrokBundle: Bundle?
    }
    
    
    open class func createJCoreAlertView(_ title: String, message: String, image:UIImage?) -> JCoreAlertView {
        
        var view: JCoreAlertView!
        
        switch UIDevice.current.userInterfaceIdiom {
        case .pad:
            print("TODO: Create Alert iPad")
            break
            
        case .phone:
            view = JCoreUtils.frameworkBundle()?.loadNibNamed("JCoreAlertView", owner: self, options: nil)?.first as! JCoreAlertView
            break
            
        default:
            break
        }
        
        view.title = title
        view.message = message
        
        _ = JCoreAutolayouts.fillContainer(UIApplication.shared.keyWindow!.subviews.first!, view: view)
        
        /*
         view.backgroundView.enableBlur(true)
         view.backgroundView.blurTintColor = UIColor.black
         view.backgroundView.blurTintColorIntensity = 0.5
         view.backgroundView.blurStyle = UIViewBlurStyle.darkStyle
         */
        
        let backImg: UIImageView? = UIImageView(image: image)
        _ = JCoreAutolayouts.fillContainer(view.backgroundView, view: backImg!)
        view.backgroundView.addSubview(backImg!)
        
        JCoreBlurEffect.blurEffect(view: view.backgroundView)
        
        view.contentView.layer.cornerRadius = 4.5
        view.contentView.layer.masksToBounds = true
        
        return view.showInView()
        
    }
    
    open func showInView() -> JCoreAlertView {
        
        self.titleMessage.numberOfLines = 1
        self.titleMessage.text = self.title
        self.titleMessage.sizeToFit()
        
        self.messageAlert.numberOfLines = 1
        self.messageAlert.text = self.message
        self.messageAlert.sizeToFit()
        
        self.tag = tag
        
        self.alpha = 0
        UIView.animate(
            withDuration: 0.3,
            animations: { () -> Void in
                self.alpha = 1.0
        },
            completion: nil
        )
        
        return self
    }
    
    open func removeFromView() {
        UIView.animate(
            withDuration: 0.3,
            delay: 0.0,
            options: .allowUserInteraction,
            animations: { () -> Void in
                
                self.alpha = 0
                
        }) { (completed) -> Void in
            
            self.removeFromSuperview()
            
        }
    }
    
    
    //MARK: - Action's Buttons
    @IBAction func cancelOnClick(_ sender: AnyObject) {
        self.removeFromView()
    }

}
