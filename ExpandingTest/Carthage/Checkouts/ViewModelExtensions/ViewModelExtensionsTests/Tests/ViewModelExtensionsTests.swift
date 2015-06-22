//
//  ViewModelExtensionsTests.swift
//  ViewModelExtensionsTests
//
//  Created by Vesza Jozsef on 11/06/15.
//  Copyright (c) 2015 József Vesza. All rights reserved.
//

import UIKit
import XCTest

class ViewModelExtensionsTests: XCTestCase {
    
    func instanceFromStoryboardWithName() {
        
        let exampleVM = ExampleViewModel()
        let exampleVC = ExampleViewController.instanceWithViewModel(exampleVM)
        
        // Invoke `viewDidLoad()`
        exampleVC?.view
        
        XCTAssertNotNil(exampleVC!, "Unable to instantiate from Storyboard.")
        XCTAssertEqual(exampleVM.exampleString, exampleVC!.exampleProperty, "View model injection unsuccessful")
    }
}
