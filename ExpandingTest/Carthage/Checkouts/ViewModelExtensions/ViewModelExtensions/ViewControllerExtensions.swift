//
//  ViewControllerExtensions.swift
//  ViewModelExtensions
//
//  Created by Vesza Jozsef on 11/06/15.
//  Copyright (c) 2015 József Vesza. All rights reserved.
//

import UIKit

/// Protocol for view model classes.
/// No required methods, instead it works as an indicator.
public protocol ViewModelType {}

/// Protocol for view controllers to support view model injection.
public protocol ViewControllerInitializable {
    typealias T
    typealias U: ViewModelType
    
    /// Serves as an initializer for view controllers.
    ///
    /// :param: viewModel A view model instance for the view controller.
    ///
    /// :returns: A view controller instance configured with the correct view model.
    static func instanceWithViewModel(viewModel: U) -> T?
}

public extension UIViewController {
    
    /// Instantiate a view controller from the default storyboard.
    /// Requires "Main.storyboard" to be present.
    ///
    /// :returns: a view controller instance loaded from default storyboard.
    public class func instance() -> UIViewController? {
        return self.instanceFromStoryboardWithName()
    }
    
    /// Instantiate a view controller from a given storyboard.
    ///
    /// :param: storyboardName The name of the storyboard file (defaults to "Main")
    /// :param: fromBundle The bundle to use (defaults to `nil`)
    ///
    /// :returns: a view controller instance loaded from the provided storyboard file.
    public class func instanceFromStoryboardWithName(storyboardName: String = "Main", fromBundle bundle: NSBundle? = nil) -> UIViewController? {
        let storyboardId = NSStringFromClass(self)
        
        if let strippedId = storyboardId.componentsSeparatedByCharactersInSet(NSCharacterSet.punctuationCharacterSet()).last {
            return UIStoryboard(name: storyboardName, bundle: bundle).instantiateViewControllerWithIdentifier(strippedId) as? UIViewController
        }
        
        return nil
    }
}