//
//  SKAutoDimensionViewController.m
//  TableViewTest
//
//  Created by 赵申侃 on 2018/1/13.
//  Copyright © 2018 赵申侃. All rights reserved.
//

#import "SKAutoDimensionViewController.h"


@interface SKAutoDimensionViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation SKAutoDimensionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.estimatedRowHeight = 200;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    [self.tableView registerClass:[SKAutoDimensionTableViewCell class] forCellReuseIdentifier:@"SKAutoDimensionTableViewCell"];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SKAutoDimensionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SKAutoDimensionTableViewCell"];
    dataModel *dataModel = self.dataArr[indexPath.row];
    cell.contentLbl.text = dataModel.content;
    return cell;
}

@end
