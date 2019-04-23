//
//  SKTextureTableViewCell.m
//  TableViewTest
//
//  Created by 赵申侃 on 2018/1/13.
//  Copyright © 2018 赵申侃. All rights reserved.
//

#import "SKTextureTableViewCell.h"

@implementation SKTextureTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.textNode = [[ASTextNode alloc] init];
        [self.contentView addSubnode:self.textNode];
        
    }
    return self;
}

@end
