//
//  ExpandingTableViewControllerType.swift
//  ExpandingTableView
//
//  Created by Vesza Jozsef on 03/06/15.
//  Copyright (c) 2015 József Vesza. All rights reserved.
//

import UIKit

/// Definition of an table view controlelr supporting expanding cells.
public protocol ExpandingTableViewControllerType {
    
    /// Index of the currently expanded cell.
    var expandedIndexPath: NSIndexPath? { get }
}