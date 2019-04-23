//
//  SKYYkitTableViewCell.m
//  TableViewTest
//
//  Created by 赵申侃 on 2018/1/13.
//  Copyright © 2018 赵申侃. All rights reserved.
//

#import "SKYYkitTableViewCell.h"

@implementation SKYYkitTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        _contentLbl = [[YYLabel alloc] init];
        _contentLbl.textColor = [UIColor blackColor];
        _contentLbl.numberOfLines = 0;
        _contentLbl.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:_contentLbl];
        
        _downline = [[UILabel alloc] init];
        _downline.backgroundColor = [UIColor blackColor];
        [self.contentView addSubview:_downline];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    _contentLbl.frame = CGRectMake(15, 10, KScreenWidth - 30, 40);
    [_contentLbl sizeToFit];
    _downline.frame = CGRectMake(0, self.contentView.bottomY - 1, KScreenWidth, 1);
    
}

@end
