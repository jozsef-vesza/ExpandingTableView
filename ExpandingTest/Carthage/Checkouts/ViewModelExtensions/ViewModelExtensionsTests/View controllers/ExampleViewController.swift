//
//  ExampleViewController.swift
//  ViewModelExtensions
//
//  Created by Vesza Jozsef on 11/06/15.
//  Copyright (c) 2015 József Vesza. All rights reserved.
//

import UIKit

class ExampleViewController: UIViewController {
    
    var viewModel: ExampleViewModel!
    var exampleProperty = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        exampleProperty = viewModel.exampleString
    }
}

extension ExampleViewController: ViewControllerInitializable {
    
    static func instanceWithViewModel(viewModel: ExampleViewModel) -> ExampleViewController? {
        
        if let instance = self.instanceFromStoryboardWithName(storyboardName: "Test", fromBundle: NSBundle(forClass: self)) as? ExampleViewController {
            
            instance.viewModel = viewModel
            
            return instance
        }
        
        return nil
    }
}