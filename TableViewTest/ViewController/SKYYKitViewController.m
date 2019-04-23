//
//  SKYYKitViewController.m
//  TableViewTest
//
//  Created by 赵申侃 on 2018/1/13.
//  Copyright © 2018 赵申侃. All rights reserved.
//

#import "SKYYKitViewController.h"

@interface SKYYKitViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation SKYYKitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[SKYYkitTableViewCell class] forCellReuseIdentifier:@"SKYYkitTableViewCell"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SKYYkitTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SKYYkitTableViewCell"];
    dataModel *dataModel = self.dataArr[indexPath.row];
    cell.contentLbl.text = dataModel.content;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    dataModel *dataModel = self.dataArr[indexPath.row];
    return dataModel.cellHeight + 20;
}

@end
