//
//  YQColumnCell.m
//  YQCustomViewTransitionDemo
//
//  Created by andy on 12/8/14.
//  Copyright (c) 2014 andy. All rights reserved.
//

#import "YQColumnCell.h"
@interface YQColumnCell()
@property (nonatomic, strong) UIImageView *imgView;
@end

@implementation YQColumnCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _imgView = [[UIImageView alloc] initWithFrame:frame];
    }
    return self;
}

- (void)configCellWithImage:(UIImage *)image
{
    self.imgView.image = image;
}

@end
