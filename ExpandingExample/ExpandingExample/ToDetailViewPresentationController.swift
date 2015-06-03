//
//  ToDetailViewPresentationController.swift
//  ExpandableTableView
//
//  Created by Vesza Jozsef on 27/05/15.
//  Copyright (c) 2015 Vesza Jozsef. All rights reserved.
//

import UIKit

class ToDetailViewPresentationController: NSObject, UIViewControllerAnimatedTransitioning {
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning) -> NSTimeInterval {
        return 0.3
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        
        let fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey) as! MainViewController
        let toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey) as! DetailViewController
        let finalFrame = transitionContext.finalFrameForViewController(toViewController)
        let containerView = transitionContext.containerView()
        
        toViewController.view.frame = fromViewController.buttonRect!
        toViewController.view.transform = CGAffineTransformMakeScale(0.0, 0.0)
        toViewController.view.alpha = 0
        containerView.addSubview(toViewController.view)
        
        UIView.animateWithDuration(transitionDuration(transitionContext),
            animations: {
                toViewController.view.transform = CGAffineTransformMakeScale(1.0, 1.0)
                toViewController.view.frame = finalFrame
                toViewController.view.alpha = 1
            }) { finished in
                transitionContext.completeTransition(true)
        }
    }
}
