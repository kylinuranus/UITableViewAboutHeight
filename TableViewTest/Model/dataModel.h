//
//  dataModel.h
//  TableViewTest
//
//  Created by 赵申侃 on 2018/1/13.
//  Copyright © 2018 赵申侃. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface dataModel : NSObject

@property (nonatomic ,copy) NSString *content;
@property (nonatomic ,assign) CGFloat cellHeight;

- (CGFloat)sizeForNoticeTitle:(NSString*)text font:(UIFont*)font;

@end

NS_ASSUME_NONNULL_END
