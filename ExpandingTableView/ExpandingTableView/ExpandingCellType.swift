//
//  ExpandingCell.swift
//  ExpandingTableView
//
//  Created by Vesza Jozsef on 03/06/15.
//  Copyright (c) 2015 József Vesza. All rights reserved.
//

import UIKit

/// Definition of an expanding cell.
public protocol ExpandingCellType {
    
    /// Primary view in the cell.
    var mainContainerView: UIView! { get }
    
    /// Expandable detail view in the cell.
    var detailContainerView: UIView! { get }
    
    /// The height of the detail view.
    var detailViewHeightConstraint: NSLayoutConstraint! { get }
    
    /// Reuse identifier for the given class. Should be overridden in custom implementation.
    static var reuseId: String { get }
    
    /// Control whether the details view is shown or not.
    var showDetails: Bool { get set }
}