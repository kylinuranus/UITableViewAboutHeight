//
//  SKFDTViewController.m
//  TableViewTest
//
//  Created by 赵申侃 on 2018/1/13.
//  Copyright © 2018 赵申侃. All rights reserved.
//

#import "SKFDTViewController.h"
#import <UITableView+FDTemplateLayoutCell.h>

@interface SKFDTViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation SKFDTViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[SKFTDTableViewCell class] forCellReuseIdentifier:@"SKFTDTableViewCell"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SKFTDTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SKFTDTableViewCell"];
    dataModel *dataModel = self.dataArr[indexPath.row];
    cell.contentLbl.text = dataModel.content;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [tableView fd_heightForCellWithIdentifier:@"SKFTDTableViewCell" cacheByIndexPath:indexPath configuration:^(SKFTDTableViewCell *cell) {
        // 配置 cell 的数据源，和 "cellForRow" 干的事一致，比如：
        dataModel *dataModel = self.dataArr[indexPath.row];
        cell.contentLbl.text = dataModel.content;
    }];
}



@end
