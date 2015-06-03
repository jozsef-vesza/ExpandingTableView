//
//  BackToMainViewPresentationController.swift
//  ExpandableTableView
//
//  Created by Vesza Jozsef on 27/05/15.
//  Copyright (c) 2015 Vesza Jozsef. All rights reserved.
//

import UIKit

class BackToMainViewPresentationController: NSObject, UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning) -> NSTimeInterval {
        return 0.3
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        let fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey) as! DetailViewController
        let toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey) as! MainViewController
        let finalFrame = toViewController.buttonRect!
        let containerView = transitionContext.containerView()
        
        containerView.addSubview(toViewController.view)
        containerView.sendSubviewToBack(toViewController.view)
        
        let snapshotView = fromViewController.view.snapshotViewAfterScreenUpdates(false)
        snapshotView.frame = fromViewController.view.frame
        containerView.addSubview(snapshotView)
        
        fromViewController.view.removeFromSuperview()
        
        UIView.animateWithDuration(transitionDuration(transitionContext),
            animations: {
                snapshotView.frame = finalFrame
                snapshotView.alpha = 0
            }) { finished in
                snapshotView.removeFromSuperview()
                transitionContext.completeTransition(true)
        }
    }
}
