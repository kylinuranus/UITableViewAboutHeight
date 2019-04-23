//
//  SKFTDTableViewCell.m
//  TableViewTest
//
//  Created by 赵申侃 on 2018/1/13.
//  Copyright © 2018 赵申侃. All rights reserved.
//

#import "SKFTDTableViewCell.h"

@implementation SKFTDTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        _contentLbl = [[UILabel alloc] init];
        _contentLbl.textColor = [UIColor blackColor];
        _contentLbl.numberOfLines = 0;
        _contentLbl.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:_contentLbl];
        
        _downline = [[UILabel alloc] init];
        _downline.backgroundColor = [UIColor blackColor];
        [self.contentView addSubview:_downline];
        
        [_contentLbl makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(15);
            make.right.equalTo(-15);
            make.top.equalTo(10);
            make.bottom.equalTo(-10);

        }];
        
        [_downline makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.bottom.equalTo(self.contentView);
            make.height.equalTo(1);
        }];
        
    }
    return self;
}

@end
