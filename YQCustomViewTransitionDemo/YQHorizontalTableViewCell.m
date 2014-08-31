//
//  YQHorizontalTableViewCell.m
//  YQCustomViewTransitionDemo
//
//  Created by andy on 31/8/14.
//  Copyright (c) 2014 andy. All rights reserved.
//

#import "YQHorizontalTableViewCell.h"
@interface YQHorizontalTableViewCell()
@property (nonatomic, strong) UIImageView *contentImageView;
@end

@implementation YQHorizontalTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self initUI];
    }
    return self;
}

- (void)initUI
{
    self.backgroundColor = [UIColor clearColor];
    _contentImageView = [[UIImageView alloc] initWithFrame:self.frame];
    [self addSubview:_contentImageView];

}

- (void)configWith:(id)data
{
//    _contentImageView.image =
}

@end
