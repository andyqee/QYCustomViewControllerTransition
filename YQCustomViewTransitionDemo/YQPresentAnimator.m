//
//  YQAnimator.m
//  YQCustomViewTransitionDemo
//
//  Created by andy on 11/8/14.
//  Copyright (c) 2014 andy. All rights reserved.
//

#import "YQPresentAnimator.h"
#import "UIView+MotionBlur.h"
#import <POP/POP.h>

@implementation YQPresentAnimator

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 1;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIView *fromView = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey].view;
    fromView.userInteractionEnabled = NO;
    
    
    UIView *toView = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey].view;
    toView.frame = transitionContext.containerView.frame;
    toView.center = CGPointMake(transitionContext.containerView.center.x, 2 * transitionContext.containerView.center.y);
    
    [toView enableBlurWithAngle:M_PI_2 completion:^{
        
        [transitionContext.containerView addSubview:toView];

        POPSpringAnimation *positionAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
        positionAnimation.toValue = @(transitionContext.containerView.center.y);
        positionAnimation.springBounciness = 15;
        [positionAnimation setCompletionBlock:^(POPAnimation *anim, BOOL finished) {
            [transitionContext completeTransition:YES];
        }];
        
        POPSpringAnimation *scaleAnimation = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerScaleXY];
        scaleAnimation.springBounciness = 15;
        scaleAnimation.toValue = [NSValue valueWithCGPoint:CGPointMake(0.9, 0.9)];
        
        [toView.layer pop_addAnimation:positionAnimation forKey:@"positionAnimaiton"];
        [fromView.layer pop_addAnimation:scaleAnimation forKey:@"scaleAnimation"];
        

    }];
    
    

}

- (void)startInteractiveTransition:(id <UIViewControllerContextTransitioning>)transitionContext
{
    
}

@end
