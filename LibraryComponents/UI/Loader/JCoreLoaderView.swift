//
//  JCoreLoaderView.swift
//  JCore-ui
//
//  Created by Josue Hernandez Gonzalez on 04/05/2018.
//

import UIKit

public class JCoreLoaderView: UIView {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var iconLogo: UIImageView!
    @IBOutlet weak var loaderContentView: UIView!
    @IBOutlet weak var cancelView: UIView!
    
    
    open class func createJloader(_ view: UIView, hideNavitagionBar: Bool = true, cancellable: Bool = false, withBlur: Bool = false, image: UIImage?) -> JCoreLoaderView {
        
        
        let jloaderView = JCoreUtils.frameworkBundle()?.loadNibNamed("JCoreLoaderView", owner: nil, options: nil)?.first as! JCoreLoaderView?
        jloaderView?.backgroundView.enableBlur(true)
        jloaderView?.blurTintColor = UIColor.black
        jloaderView?.blurTintColorIntensity = 0.5
        jloaderView?.blurStyle = UIViewBlurStyle.darkStyle
        
        
        let rotacion = CABasicAnimation(keyPath: "transform.rotation.z")
        rotacion.toValue = CGFloat(.pi * 2.0)
        rotacion.duration = 1.5
        rotacion.isCumulative = true
        rotacion.repeatCount = .greatestFiniteMagnitude
        
        jloaderView?.iconLogo.layer.add(rotacion, forKey: nil)
        
        //To Hide NavigationBar
        if hideNavitagionBar && UIApplication.shared.keyWindow != nil {
            _ = JCoreAutolayouts.fillContainer(
                UIApplication.shared.keyWindow!.subviews.first!,
                view: jloaderView!
            )
        }
        else {
            _ = JCoreAutolayouts.fillContainer(view, view: jloaderView!)
        }
        
        
        if cancellable {
            jloaderView?.cancelView.isHidden = false
        }
        
        jloaderView?.alpha = 0
        UIView.animate(
            withDuration: 0.3,
            animations: { () -> Void in
                jloaderView?.alpha = 0.8
        },
            completion: nil
        )
        
        if withBlur {
            /*
             jloaderView?.backgroundView.enableBlur(true)
             jloaderView?.backgroundView.blurTintColor = UIColor.black
             jloaderView?.backgroundView.blurTintColorIntensity = 0.5
             jloaderView?.backgroundView.blurStyle = UIViewBlurStyle.darkStyle
             */
            let backImg: UIImageView? = UIImageView(image: image)
            _ = JCoreAutolayouts.fillContainer((jloaderView?.backgroundView)!, view: backImg!)
            jloaderView?.backgroundView.addSubview(backImg!)
            
            JCoreBlurEffect.blurEffect(view: jloaderView?.backgroundView)
        }
        else{
            jloaderView?.backgroundView.backgroundColor = UIColor(white: 0, alpha: 0.8)
        }
        
        return jloaderView!
    }
    
    @objc open func removeLoader() -> Void {
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
    
    //MARK: - Cancel Action
    
    @IBAction func cancelOnClick(_ sender: AnyObject) {
        self.removeLoader()
    }


}
