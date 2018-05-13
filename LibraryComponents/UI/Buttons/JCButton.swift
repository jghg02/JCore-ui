//
//  JCButton.swift
//  JCore-ui
//
//  Created by Josue Hernandez Gonzalez on 13/05/2018.
//

import UIKit

@IBDesignable
public class JCButton: UIButton {

    @IBInspectable var fillColor: UIColor = UIColor.blue
    @IBInspectable var cornerRadius: CGFloat = 0
    
    override public func draw(_ rect: CGRect) {
        layer.cornerRadius = cornerRadius
        layer.backgroundColor = fillColor.cgColor
    }

}
