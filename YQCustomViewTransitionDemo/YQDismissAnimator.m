//
//  YQDismissAnimator.m
//  YQCustomViewTransitionDemo
//
//  Created by andy on 11/8/14.
//  Copyright (c) 2014 andy. All rights reserved.
//

#import "YQDismissAnimator.h"
#import <POP/POP.h>

@implementation YQDismissAnimator

- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext
{
    return 0.6f;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    toVC.view.userInteractionEnabled = YES;
    
    UIViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];

  //  POPSpringAnimation *
    
}

- (void)startInteractiveTransition:(id <UIViewControllerContextTransitioning>)transitionContext
{
    
}

@end
