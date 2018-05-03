//
//  JCoreUtils.swift
//  JCore-ui
//
//  Created by Josue Hernandez Gonzalez on 03/05/2018.
//

import UIKit

class JCoreUtils: NSObject {
    
    //MARK: - Bundle
    class func frameworkBundle() -> Bundle? {
        return frameworkBundle(JCoreUtils.self)
    }
    
    open class func frameworkBundle(_ aClass : AnyClass) -> Bundle? {
        return Bundle(for: aClass)
    }

}
