//
//  JCoreCommons.swift
//  JCore-ui
//
//  Created by Josue Hernandez Gonzalez on 02/05/2018.
//

import UIKit

class JCoreCommons: NSObject {
    
    //MARK: - Bundle
    class func frameworkBundle() -> Bundle? {
        return frameworkBundle(JCoreCommons.self)
    }
    
    open class func frameworkBundle(_ aClass : AnyClass) -> Bundle? {
        return Bundle(for: aClass)
    }

}
