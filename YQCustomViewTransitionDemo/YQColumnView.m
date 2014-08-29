//
//  YQBaseView.m
//  YQCustomViewTransitionDemo
//
//  Created by andy on 12/8/14.
//  Copyright (c) 2014 andy. All rights reserved.
//

#import "YQColumnView.h"
#import "YQColumnCell.h"

@implementation YQColumnView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        CGFloat height = CGRectGetHeight(frame) - 6.0;
        CGFloat width = CGRectGetWidth(frame);
        int maxCount = floorf((width / height)) + 2;
        for (int i = 0; i <= maxCount; i++) {
            CGRect cellFrame = CGRectMake(0, 2, height, height);
            YQColumnCell *cell = [[YQColumnCell alloc] initWithFrame:cellFrame];
            cell.layer.cornerRadius = height / 2;
            cell.center = CGPointMake((height+3) * i + 10 + 4, cell.center.y);
            cell.backgroundColor = [UIColor redColor];
            [self addSubview:cell];
        }
    }
    return self;
}


@end
