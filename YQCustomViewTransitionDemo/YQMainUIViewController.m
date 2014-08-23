//
//  YQMainUIViewController.m
//  YQCustomViewTransitionDemo
//
//  Created by andy on 11/8/14.
//  Copyright (c) 2014 andy. All rights reserved.
//

#import "YQMainUIViewController.h"
#import "YQToViewController.h"
#import "YQColumnView.h"

@interface YQMainUIViewController ()
@end

@implementation YQMainUIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *showButton = [UIButton buttonWithType:UIButtonTypeCustom];
    showButton.frame = CGRectMake(60, 200, 200, 50);
    showButton.center = self.view.center;
    [showButton setTitle:@"show viewController" forState:UIControlStateNormal];
    showButton.titleLabel.font = [UIFont systemFontOfSize:16.0f];
    showButton.titleLabel.textColor = [UIColor brownColor];
    [showButton addTarget:self action:@selector(show) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showButton];
    self.title = @"custom transition";
    
    YQColumnView *columnView = [YQColumnView new];
    columnView.frame = CGRectMake(0, 400, CGRectGetWidth(self.view.frame),CGRectGetHeight(self.view.frame) - 400);
    [self.view addSubview:columnView];
    [self show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)show
{
    YQToViewController *toViewController = [[YQToViewController alloc] init];
    toViewController.transitioningDelegate = self;
    toViewController.modalPresentationStyle = UIModalPresentationCustom;
    [self.navigationController presentViewController:toViewController animated:YES completion:NULL];
}

@end
