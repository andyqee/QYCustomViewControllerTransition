//
//  YQBaseViewController.m
//  YQCustomViewTransitionDemo
//
//  Created by andy on 11/8/14.
//  Copyright (c) 2014 andy. All rights reserved.
//

#import "YQBaseViewController.h"
#import "YQPresentAnimator.h"
#import "YQDismissAnimator.h"

@interface YQBaseViewController ()
@end

@implementation YQBaseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIViewControllerTransitioningDelegate
- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented
                                                                  presentingController:(UIViewController *)presenting
                                                                      sourceController:(UIViewController *)source
{
    return [YQPresentAnimator new];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    return [YQDismissAnimator new];
}

//- (id <UIViewControllerInteractiveTransitioning>)interactionControllerForPresentation:(id <UIViewControllerAnimatedTransitioning>)animator
//{
//    return [YQPresentAnimator new];
//}
//
//- (id <UIViewControllerInteractiveTransitioning>)interactionControllerForDismissal:(id <UIViewControllerAnimatedTransitioning>)animator
//{
//    return [YQDismissAnimator new];
//}

@end
