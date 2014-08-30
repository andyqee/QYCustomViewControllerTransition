//
//  YQBaseView.m
//  YQCustomViewTransitionDemo
//
//  Created by andy on 12/8/14.
//  Copyright (c) 2014 andy. All rights reserved.
//

#import "YQBaseTableView.h"
#import "YQBaseTableViewCell.h"

@interface YQBaseTableView()<UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSMutableArray *contents;
@end

@implementation YQBaseTableView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _contents = [NSMutableArray new];
//        CGFloat height = CGRectGetHeight(frame) - 6.0;
//        CGFloat width = CGRectGetWidth(frame);
//        int maxCount = floorf((width / height)) + 2;
//        for (int i = 0; i <= maxCount; i++) {
//            CGRect cellFrame = CGRectMake(0, 2, height, height);
//            YQBaseTableViewCell *cell = [[YQBaseTableViewCell alloc] initWithFrame:cellFrame];
//            cell.layer.cornerRadius = height / 2;
//            cell.center = CGPointMake((height+3) * i + 10 + 4, cell.center.y);
//            cell.backgroundColor = [UIColor redColor];
//            [self addSubview:cell];
//        }
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
    NSString *cellIdentify = [YQBaseTableViewCell description];
    YQBaseTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
    if (cell == nil) {
        cell = [[YQBaseTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentify];
    }
    return cell;
//    [cell configCellWithImage:<#(UIImage *)#>];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.contents count];
}

@end
