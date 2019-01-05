//
//  JCoreAutolayouts.swift
//  JCore-ui
//
//  Created by Josue Hernandez Gonzalez on 03/05/2018.
//

import UIKit

@objc open class FillConstraints : NSObject {
    open var top: NSLayoutConstraint!
    open var left: NSLayoutConstraint!
    open var bottom: NSLayoutConstraint!
    open var right: NSLayoutConstraint!
}

@objc open class CenterConstraints : NSObject {
    open var width: NSLayoutConstraint!
    open var height: NSLayoutConstraint!
    open var horizontalCenter: NSLayoutConstraint!
    open var verticalCenter: NSLayoutConstraint!
}

@objc open class AllConstraints : NSObject {
    open var top: NSLayoutConstraint?
    open var left: NSLayoutConstraint?
    open var bottom: NSLayoutConstraint?
    open var right: NSLayoutConstraint?
    open var width: NSLayoutConstraint?
    open var height: NSLayoutConstraint?
    
    open var horizontalCenter: NSLayoutConstraint!
    open var verticalCenter: NSLayoutConstraint!
}

@objc class JCoreAutolayouts: NSObject {
    
    open class func addView(
        _ view : UIView,
        topMargin : CGFloat?,
        leftMargin : CGFloat?,
        bottomMargin : CGFloat?,
        rightMargin : CGFloat?,
        width : CGFloat?,
        widthRelation : NSLayoutRelation?,
        height : CGFloat?,
        heightRelation : NSLayoutRelation?,
        horizontalCenter: Bool?,
        verticalCenter: Bool?,
        toContainer container : UIView ) -> AllConstraints {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(view)
        
        var top : NSLayoutConstraint?
        var bottom : NSLayoutConstraint?
        var left : NSLayoutConstraint?
        var right : NSLayoutConstraint?
        
        var widthConstraint : NSLayoutConstraint?
        var heightConstraint : NSLayoutConstraint?
        
        var centerXConstraint: NSLayoutConstraint?
        var centerYConstraint: NSLayoutConstraint?
        
        if topMargin != nil {
            top = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.top,
                relatedBy: NSLayoutRelation.equal,
                toItem: container,
                attribute: NSLayoutAttribute.top,
                multiplier: 1.0,
                constant: topMargin!
            )
            container.addConstraint(top!);
        }
        
        if leftMargin != nil {
            left = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.leading,
                relatedBy: NSLayoutRelation.equal,
                toItem: container,
                attribute: NSLayoutAttribute.leading,
                multiplier: 1.0,
                constant: leftMargin!
            )
            container.addConstraint(left!);
        }
        
        if bottomMargin != nil {
            bottom = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.bottom,
                relatedBy: NSLayoutRelation.equal,
                toItem: container,
                attribute: NSLayoutAttribute.bottom,
                multiplier: 1.0,
                constant: bottomMargin!
            )
            container.addConstraint(bottom!);
        }
        
        if rightMargin != nil {
            right = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.trailing,
                relatedBy: NSLayoutRelation.equal,
                toItem: container,
                attribute: NSLayoutAttribute.trailing,
                multiplier: 1.0,
                constant: rightMargin!
            )
            container.addConstraint(right!);
        }
        
        if height != nil {
            heightConstraint = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.height,
                relatedBy: heightRelation ?? NSLayoutRelation.equal,
                toItem: nil,
                attribute: NSLayoutAttribute.notAnAttribute,
                multiplier: 1.0,
                constant: height!
            )
            container.addConstraint(heightConstraint!);
        }
        
        if width != nil {
            widthConstraint = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.width,
                relatedBy: widthRelation ?? NSLayoutRelation.equal,
                toItem: nil,
                attribute: NSLayoutAttribute.notAnAttribute,
                multiplier: 1.0,
                constant: width!
            )
            
            container.addConstraint(widthConstraint!);
        }
        
        if horizontalCenter == true {
            
            centerXConstraint = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.centerX,
                relatedBy: NSLayoutRelation.equal,
                toItem: container,
                attribute: NSLayoutAttribute.centerX,
                multiplier: 1.0,
                constant: 0.0
            )
            
        }
        
        if verticalCenter == true {
            
            centerYConstraint = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.centerY,
                relatedBy: NSLayoutRelation.equal,
                toItem: container,
                attribute: NSLayoutAttribute.centerY,
                multiplier: 1.0,
                constant: 0.0
            )
            
        }
        
        let constraints = AllConstraints()
        constraints.top = top
        constraints.left = left
        constraints.bottom = bottom
        constraints.right = right
        constraints.width = widthConstraint
        constraints.height = heightConstraint
        constraints.horizontalCenter = centerXConstraint
        constraints.verticalCenter = centerYConstraint
        
        return constraints
        
    }
    
    
    open class func addView(
        _ view : UIView,
        topMargin : CGFloat?,
        leftMargin : CGFloat?,
        bottomMargin : CGFloat?,
        rightMargin : CGFloat?,
        width : CGFloat?,
        height : CGFloat?,
        horizontalCenter: Bool?,
        verticalCenter: Bool?,
        toContainer container : UIView ) -> AllConstraints {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(view)
        
        var top : NSLayoutConstraint?
        var bottom : NSLayoutConstraint?
        var left : NSLayoutConstraint?
        var right : NSLayoutConstraint?
        
        var widthConstraint : NSLayoutConstraint?
        var heightConstraint : NSLayoutConstraint?
        
        var centerXConstraint: NSLayoutConstraint?
        var centerYConstraint: NSLayoutConstraint?
        
        if topMargin != nil {
            top = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.top,
                relatedBy: NSLayoutRelation.equal,
                toItem: container,
                attribute: NSLayoutAttribute.top,
                multiplier: 1.0,
                constant: topMargin!
            )
            container.addConstraint(top!);
        }
        
        if leftMargin != nil {
            left = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.leading,
                relatedBy: NSLayoutRelation.equal,
                toItem: container,
                attribute: NSLayoutAttribute.leading,
                multiplier: 1.0,
                constant: leftMargin!
            )
            container.addConstraint(left!);
        }
        
        if bottomMargin != nil {
            bottom = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.bottom,
                relatedBy: NSLayoutRelation.equal,
                toItem: container,
                attribute: NSLayoutAttribute.bottom,
                multiplier: 1.0,
                constant: bottomMargin!
            )
            container.addConstraint(bottom!);
        }
        
        if rightMargin != nil {
            right = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.trailing,
                relatedBy: NSLayoutRelation.equal,
                toItem: container,
                attribute: NSLayoutAttribute.trailing,
                multiplier: 1.0,
                constant: rightMargin!
            )
            container.addConstraint(right!);
        }
        
        if height != nil {
            heightConstraint = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.height,
                relatedBy: NSLayoutRelation.equal,
                toItem: nil,
                attribute: NSLayoutAttribute.notAnAttribute,
                multiplier: 1.0,
                constant: height!
            )
            container.addConstraint(heightConstraint!);
        }
        
        if width != nil {
            widthConstraint = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.width,
                relatedBy: NSLayoutRelation.equal,
                toItem: nil,
                attribute: NSLayoutAttribute.notAnAttribute,
                multiplier: 1.0,
                constant: width!
            )
            
            container.addConstraint(widthConstraint!);
        }
        
        if horizontalCenter == true {
            
            centerXConstraint = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.centerX,
                relatedBy: NSLayoutRelation.equal,
                toItem: container,
                attribute: NSLayoutAttribute.centerX,
                multiplier: 1.0,
                constant: 0.0
            )
            
        }
        
        if verticalCenter == true {
            
            centerYConstraint = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.centerY,
                relatedBy: NSLayoutRelation.equal,
                toItem: container,
                attribute: NSLayoutAttribute.centerY,
                multiplier: 1.0,
                constant: 0.0
            )
            
        }
        
        let constraints = AllConstraints()
        constraints.top = top
        constraints.left = left
        constraints.bottom = bottom
        constraints.right = right
        constraints.width = widthConstraint
        constraints.height = heightConstraint
        constraints.horizontalCenter = centerXConstraint
        constraints.verticalCenter = centerYConstraint
        
        return constraints
        
    }
    
    open class func addView(
        _ view : UIView,
        topMargin : CGFloat?,
        leftMargin : CGFloat?,
        bottomMargin : CGFloat?,
        rightMargin : CGFloat?,
        width : CGFloat?,
        height : CGFloat?,
        toContainer container : UIView ) -> AllConstraints {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(view)
        
        var top : NSLayoutConstraint?
        var bottom : NSLayoutConstraint?
        var left : NSLayoutConstraint?
        var right : NSLayoutConstraint?
        
        var widthConstraint : NSLayoutConstraint?
        var heightConstraint : NSLayoutConstraint?
        
        if topMargin != nil {
            top = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.top,
                relatedBy: NSLayoutRelation.equal,
                toItem: container,
                attribute: NSLayoutAttribute.top,
                multiplier: 1.0,
                constant: topMargin!
            )
            container.addConstraint(top!);
        }
        
        if leftMargin != nil {
            left = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.leading,
                relatedBy: NSLayoutRelation.equal,
                toItem: container,
                attribute: NSLayoutAttribute.leading,
                multiplier: 1.0,
                constant: leftMargin!
            )
            container.addConstraint(left!);
        }
        
        if bottomMargin != nil {
            bottom = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.bottom,
                relatedBy: NSLayoutRelation.equal,
                toItem: container,
                attribute: NSLayoutAttribute.bottom,
                multiplier: 1.0,
                constant: bottomMargin!
            )
            container.addConstraint(bottom!);
        }
        
        if rightMargin != nil {
            right = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.trailing,
                relatedBy: NSLayoutRelation.equal,
                toItem: container,
                attribute: NSLayoutAttribute.trailing,
                multiplier: 1.0,
                constant: rightMargin!
            )
            container.addConstraint(right!);
        }
        
        if height != nil {
            heightConstraint = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.height,
                relatedBy: NSLayoutRelation.equal,
                toItem: nil,
                attribute: NSLayoutAttribute.notAnAttribute,
                multiplier: 1.0,
                constant: height!
            )
            container.addConstraint(heightConstraint!);
        }
        
        if width != nil {
            widthConstraint = NSLayoutConstraint(
                item: view,
                attribute: NSLayoutAttribute.width,
                relatedBy: NSLayoutRelation.equal,
                toItem: nil,
                attribute: NSLayoutAttribute.notAnAttribute,
                multiplier: 1.0,
                constant: width!
            )
            
            container.addConstraint(widthConstraint!);
        }
        
        
        let constraints = AllConstraints()
        constraints.top = top
        constraints.left = left
        constraints.bottom = bottom
        constraints.right = right
        constraints.width = widthConstraint
        constraints.height = heightConstraint
        
        return constraints
    }
    
    @objc open class func fillContainer(
        _ container : UIView, view : UIView ) -> FillConstraints {
        
        let top = NSLayoutConstraint(
            item: view,
            attribute: NSLayoutAttribute.top,
            relatedBy: NSLayoutRelation.equal,
            toItem: container,
            attribute: NSLayoutAttribute.top,
            multiplier: 1.0,
            constant: 0.0
        )
        
        let right = NSLayoutConstraint(
            item: view,
            attribute: NSLayoutAttribute.trailing,
            relatedBy: NSLayoutRelation.equal,
            toItem: container,
            attribute: NSLayoutAttribute.trailing,
            multiplier: 1.0,
            constant: 0.0
        )
        
        let bottom = NSLayoutConstraint(
            item: view,
            attribute: NSLayoutAttribute.bottom,
            relatedBy: NSLayoutRelation.equal,
            toItem: container,
            attribute: NSLayoutAttribute.bottom,
            multiplier: 1.0,
            constant: 0.0
        )
        
        let left = NSLayoutConstraint(
            item: view,
            attribute: NSLayoutAttribute.leading,
            relatedBy: NSLayoutRelation.equal,
            toItem: container,
            attribute: NSLayoutAttribute.leading,
            multiplier: 1.0,
            constant: 0.0
        )
        
        view.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(view)
        
        container.addConstraint(top);
        container.addConstraint(left);
        container.addConstraint(bottom);
        container.addConstraint(right);
        
        let constraints = FillConstraints()
        constraints.top = top
        constraints.left = left
        constraints.bottom = bottom
        constraints.right = right
        
        return constraints
    }
    
    @objc open class func fillContainer(
        _ container : UIView,
        view : UIView,
        margin : UIEdgeInsets ) -> FillConstraints {
        
        let top = NSLayoutConstraint(
            item: view,
            attribute: NSLayoutAttribute.top,
            relatedBy: NSLayoutRelation.equal,
            toItem: container,
            attribute: NSLayoutAttribute.top,
            multiplier: 1.0,
            constant: margin.top
        )
        
        let right = NSLayoutConstraint(
            item: view,
            attribute: NSLayoutAttribute.trailing,
            relatedBy: NSLayoutRelation.equal,
            toItem: container,
            attribute: NSLayoutAttribute.trailing,
            multiplier: 1.0,
            constant: -margin.right
        )
        
        let bottom = NSLayoutConstraint(
            item: view,
            attribute: NSLayoutAttribute.bottom,
            relatedBy: NSLayoutRelation.equal,
            toItem: container,
            attribute: NSLayoutAttribute.bottom,
            multiplier: 1.0,
            constant: -margin.bottom
        )
        
        let left = NSLayoutConstraint(
            item: view,
            attribute: NSLayoutAttribute.leading,
            relatedBy: NSLayoutRelation.equal,
            toItem: container,
            attribute: NSLayoutAttribute.leading,
            multiplier: 1.0,
            constant: margin.left
        )
        
        view.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(view)
        
        container.addConstraint(top);
        container.addConstraint(left);
        container.addConstraint(bottom);
        container.addConstraint(right);
        
        let constraints = FillConstraints()
        constraints.top = top
        constraints.left = left
        constraints.bottom = bottom
        constraints.right = right
        
        return constraints
    }
    
    @objc open class func centerView(
        _ view : UIView,
        inContainer : UIView,
        withSize : CGSize ) -> CenterConstraints {
        
        let centerYConstraint = NSLayoutConstraint(
            item: view,
            attribute: NSLayoutAttribute.centerY,
            relatedBy: NSLayoutRelation.equal,
            toItem: inContainer,
            attribute: NSLayoutAttribute.centerY,
            multiplier: 1.0,
            constant: 0.0
        )
        
        let centerXConstraint = NSLayoutConstraint(
            item: view,
            attribute: NSLayoutAttribute.centerX,
            relatedBy: NSLayoutRelation.equal,
            toItem: inContainer,
            attribute: NSLayoutAttribute.centerX,
            multiplier: 1.0,
            constant: 0.0
        )
        
        let heightConstraint = NSLayoutConstraint(
            item: view,
            attribute: NSLayoutAttribute.height,
            relatedBy: NSLayoutRelation.equal,
            toItem: nil,
            attribute: NSLayoutAttribute.notAnAttribute,
            multiplier: 1.0,
            constant: withSize.height
        )
        
        let widthConstraint = NSLayoutConstraint(
            item: view,
            attribute: NSLayoutAttribute.width,
            relatedBy: NSLayoutRelation.equal,
            toItem: nil,
            attribute: NSLayoutAttribute.notAnAttribute,
            multiplier: 1.0,
            constant: withSize.width
        )
        
        view.translatesAutoresizingMaskIntoConstraints = false
        inContainer.addSubview(view)
        
        inContainer.addConstraint(centerXConstraint);
        inContainer.addConstraint(centerYConstraint);
        inContainer.addConstraint(heightConstraint);
        inContainer.addConstraint(widthConstraint);
        
        let constraints = CenterConstraints()
        constraints.width = widthConstraint
        constraints.height = heightConstraint
        constraints.horizontalCenter = centerXConstraint
        constraints.verticalCenter = centerYConstraint
        
        return constraints
    }
    
    open class func setFixedWidth(_ width: CGFloat, height: CGFloat, forView view: UIView) -> Void {
        let _ = NSLayoutConstraint(
            item: view,
            attribute: NSLayoutAttribute.height,
            relatedBy: NSLayoutRelation.equal,
            toItem: nil,
            attribute: NSLayoutAttribute.notAnAttribute,
            multiplier: 1.0,
            constant: height
        )
        
        let _ = NSLayoutConstraint(
            item: view,
            attribute: NSLayoutAttribute.width,
            relatedBy: NSLayoutRelation.equal,
            toItem: nil,
            attribute: NSLayoutAttribute.notAnAttribute,
            multiplier: 1.0,
            constant: width
        )
    }
    
}
