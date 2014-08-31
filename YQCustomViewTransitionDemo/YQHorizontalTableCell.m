//
//  YQHorizontalTableCell.m
//  YQCustomViewTransitionDemo
//
//  Created by andy on 30/8/14.
//  Copyright (c) 2014 andy. All rights reserved.
//

#import "YQHorizontalTableCell.h"
#import "YQHorizontalTableViewCell.h"

@interface YQHorizontalTableCell()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) UITableView *horizontalTableView;
@end

@implementation YQHorizontalTableCell

- (instancetype)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame]){
        _dataMArray = [NSMutableArray new];
        _horizontalTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetHeight(self.frame), CGRectGetWidth(self.frame))];
        _horizontalTableView.showsHorizontalScrollIndicator = NO;
        _horizontalTableView.showsVerticalScrollIndicator = NO;
        _horizontalTableView.transform = CGAffineTransformMakeRotation(-M_PI * 0.5);
        
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentify = @"horizontalTableViewCell";
    YQHorizontalTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
    if (cell == nil) {
        cell = [[YQHorizontalTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentify];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
//    cell.frame =
// TODO:config Cell
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.dataMArray count];
}

@end
