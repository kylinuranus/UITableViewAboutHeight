//
//  ViewController.m
//  TableViewTest
//
//  Created by 赵申侃 on 2018/1/13.
//  Copyright © 2018 赵申侃. All rights reserved.
//

#import "ViewController.h"
#import "SKCommonViewController.h"


@interface ViewController ()
<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, copy) NSArray *dataArr;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dataArr = @[@"Autolayout+AutomaticDimension",@"frame+预算高度",@"UITableView+FDTemplateLayoutCell",@"YYKit+Frame+预算高度",@"表单"];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.rowHeight = 50;
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    [self.view addSubview:tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    cell.textLabel.text = self.dataArr[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *str = self.dataArr[indexPath.row];
    if ([str isEqualToString:@"frame+预算高度"]) {
        UIViewController *vc = [[NSClassFromString(@"SKCommonViewController") alloc] init];
        vc.navigationItem.title = str;
        [self.navigationController pushViewController:vc animated:YES];
        
    } else if ([str isEqualToString:@"Autolayout+AutomaticDimension"]) {
        UIViewController *vc = [[NSClassFromString(@"SKAutoDimensionViewController") alloc] init];
        vc.navigationItem.title = str;
        [self.navigationController pushViewController:vc animated:YES];
    } else if ([str isEqualToString:@"UITableView+FDTemplateLayoutCell"]) {
        UIViewController *vc = [[NSClassFromString(@"SKFDTViewController") alloc] init];
        vc.navigationItem.title = str;
        [self.navigationController pushViewController:vc animated:YES];
    } else if ([str isEqualToString:@"YYKit+Frame+预算高度"]) {
        UIViewController *vc = [[NSClassFromString(@"SKYYKitViewController") alloc] init];
        vc.navigationItem.title = str;
        [self.navigationController pushViewController:vc animated:YES];
    }
    
    

}
    
    

@end
