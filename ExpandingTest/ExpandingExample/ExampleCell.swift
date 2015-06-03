//
//  ExampleCell.swift
//  ExpandingExample
//
//  Created by Vesza Jozsef on 03/06/15.
//  Copyright (c) 2015 József Vesza. All rights reserved.
//

import UIKit
import ExpandingTableView

typealias ActionHandler = (UIButton, NSIndexPath) -> Void

class ExampleCell: ExpandingTableViewCell {
    
    @IBOutlet private weak var mainTitleLabel: UILabel!
    
    var mainTitle: String! {
        didSet {
            mainTitleLabel.text = mainTitle
        }
    }
    
    var detailButtonActionHandler: ActionHandler = { _ in }
    var indexPath = NSIndexPath()
    
    @IBAction private func didPressDetailButton(sender: UIButton) {
        detailButtonActionHandler(sender, indexPath)
    }
}
