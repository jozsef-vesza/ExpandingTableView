//
//  MainViewController.swift
//  ExpandingExample
//
//  Created by Vesza Jozsef on 03/06/15.
//  Copyright (c) 2015 József Vesza. All rights reserved.
//

import UIKit
import ExpandingTableView

let detailSegueIdentifier = "showDetailSegue"
let statusbarHeight: CGFloat = 20

class MainViewController: ExpandingTableViewController {

    let toDetailViewController = ToDetailViewPresentationController()
    let backToMainViewController = BackToMainViewPresentationController()
    
    var viewModel: TableViewModel!
    var buttonRect: CGRect?
    
    // MARK: - Lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.contentInset.top = statusbarHeight
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 125
        tableView.tableFooterView = UIView(frame: CGRectZero)
    }
    
    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = super.tableView(tableView, cellForRowAtIndexPath: indexPath) as! ExampleCell
        
        cell.mainTitle = viewModel.titleForRow(indexPath.row)
        cell.indexPath = indexPath
        cell.detailButtonActionHandler = { [unowned self] button, index in
            
            if let destination = DetailViewController.instanceWithViewModel(DetailViewModel(photoStore: self.viewModel.photoStore, selectedIndex: index.row)) {
                
                let newRect = cell.convertRect(button.frame, toView: nil)
                self.buttonRect = newRect
                destination.transitioningDelegate = self
                
                self.presentViewController(destination, animated: true, completion: nil)
            }
            
        }
        
        return cell
    }
}

extension MainViewController: UIViewControllerTransitioningDelegate {
    
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return toDetailViewController
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return backToMainViewController
    }
}

extension MainViewController: ViewControllerInitializable {
    
    static func instanceWithViewModel(viewModel: TableViewModel) -> MainViewController? {
        if let instance = self.instance() as? MainViewController {
            instance.viewModel = viewModel
            return instance
        }
        
        return nil
    }
}