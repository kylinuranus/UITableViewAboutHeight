//
//  SKYYkitTableViewCell.h
//  TableViewTest
//
//  Created by 赵申侃 on 2018/1/13.
//  Copyright © 2018 赵申侃. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <YYKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SKYYkitTableViewCell : UITableViewCell

@property (nonatomic, strong) YYLabel *contentLbl;
@property (nonatomic, strong) UILabel *downline;

@end

NS_ASSUME_NONNULL_END
