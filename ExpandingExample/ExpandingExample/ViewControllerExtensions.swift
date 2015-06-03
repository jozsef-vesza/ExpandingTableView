//
//  ViewControllerExtensions.swift
//  ExpandableTableView
//
//  Created by József Vesza on 27/05/15.
//  Copyright (c) 2015 Vesza Jozsef. All rights reserved.
//

import UIKit

protocol ViewModelType {}

protocol ViewControllerInitializable {
    typealias T
    typealias U: ViewModelType
    static func instanceWithViewModel(viewModel: U) -> T?
}

extension UIViewController {
    
    class func instance() -> UIViewController? {
        return self.instanceFromStoryboardWithName()
    }
    
    class func instanceFromStoryboardWithName(storyboardName: String = "Main", fromBundle bundle: NSBundle? = nil) -> UIViewController? {
        let storyboardId = NSStringFromClass(self)
        
        if let strippedId = storyboardId.componentsSeparatedByCharactersInSet(NSCharacterSet.punctuationCharacterSet()).last {
            return UIStoryboard(name: storyboardName, bundle: bundle).instantiateViewControllerWithIdentifier(strippedId) as? UIViewController
        }
        return nil
    }
}