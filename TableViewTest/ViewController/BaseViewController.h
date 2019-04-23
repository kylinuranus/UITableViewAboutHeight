//
//  BaseViewController.h
//  TableViewTest
//
//  Created by 赵申侃 on 2018/1/13.
//  Copyright © 2018 赵申侃. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SKContentTableViewCell.h"
#import "dataModel.h"
#import "SKAutoDimensionTableViewCell.h"
#import "SKFTDTableViewCell.h"
#import "SKYYkitTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseViewController : UIViewController

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArr;


@end

NS_ASSUME_NONNULL_END
