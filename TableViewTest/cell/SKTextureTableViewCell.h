//
//  SKTextureTableViewCell.h
//  TableViewTest
//
//  Created by 赵申侃 on 2018/1/13.
//  Copyright © 2018 赵申侃. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Texture/AsyncDisplayKit/ASTextNode.h>

NS_ASSUME_NONNULL_BEGIN

@interface SKTextureTableViewCell : UITableViewCell

@property (nonatomic, strong) ASTextNode *textNode;
@property (nonatomic, strong) ASTextNode *downline;

@end

NS_ASSUME_NONNULL_END
