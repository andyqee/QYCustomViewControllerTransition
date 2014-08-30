//
//  YQYQHorizontalTableCell.m
//  YQCustomViewTransitionDemo
//
//  Created by andy on 30/8/14.
//  Copyright (c) 2014 andy. All rights reserved.
//

#import "YQYQHorizontalTableCell.h"

@interface YQYQHorizontalTableCell()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *horizontalTableView;
@end

@implementation YQYQHorizontalTableCell

- (instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame]){
        self.horizontalTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetHeight(self.frame), CGRectGetWidth(self.frame))];
        
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

@end
