//
//  YQToViewController.m
//  YQCustomViewTransitionDemo
//
//  Created by andy on 11/8/14.
//  Copyright (c) 2014 andy. All rights reserved.
//

#import "YQToViewController.h"
#import "YQColumnView.h"

@interface YQToViewController ()<UIScrollViewDelegate>
@property (nonatomic, strong) YQColumnView *columnView;
@end

@implementation YQToViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    UIGestureRecognizer *tapgesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissSelf)];
    [self.view addGestureRecognizer:tapgesture];
    
    CGRect rect = CGRectMake(0, 60, CGRectGetWidth(self.view.frame), 80);
    self.columnView = [[YQColumnView alloc] initWithFrame:rect];
    self.columnView.backgroundColor = [UIColor blueColor];
    self.columnView.delegate = self;
    self.columnView.alwaysBounceHorizontal = YES;
    self.columnView.contentSize = CGSizeMake(2999, 39);
    [self.view addSubview:self.columnView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)dismissSelf
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    if (scrollView.contentOffset.y != 0) {
        scrollView.contentOffset = CGPointMake(scrollView.contentOffset.x, 0);
    }
}

@end
