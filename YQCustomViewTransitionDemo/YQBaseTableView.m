//
//  YQBaseView.m
//  YQCustomViewTransitionDemo
//
//  Created by andy on 12/8/14.
//  Copyright (c) 2014 andy. All rights reserved.
//

#import "YQBaseTableView.h"
#import "YQBaseTableViewCell.h"
#import "YQHorizontalTableCell.h"

@interface YQBaseTableView()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSMutableArray *contents;
@end

@implementation YQBaseTableView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _contents = [NSMutableArray new];
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
    if (indexPath.row == 1) {
        NSString *cellIdentify = [YQHorizontalTableCell description];
        YQHorizontalTableCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
        if (cell == nil) {
            cell = [[YQHorizontalTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentify];
        }
        return cell;
    }
    
    NSString *cellIdentify = [YQBaseTableViewCell description];
    YQBaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
    if (cell == nil) {
        cell = [[YQBaseTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentify];
    }
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.contents count];
}

@end
