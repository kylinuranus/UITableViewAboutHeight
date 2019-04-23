//
//  BaseViewController.m
//  TableViewTest
//
//  Created by 赵申侃 on 2018/1/13.
//  Copyright © 2018 赵申侃. All rights reserved.
//

#import "BaseViewController.h"


@interface BaseViewController ()



@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    _tableView  = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.view_width, self.view.view_height)];
    _tableView.separatorStyle = UITableViewCellSelectionStyleNone;
    [self.view addSubview:_tableView];
}


- (NSMutableArray *)dataArr
{
    if (!_dataArr) {
        _dataArr = [[NSMutableArray alloc] init];
        for (int i = 0; i < 30; i ++) {
            dataModel *data = [[dataModel alloc] init];
            NSString *content = @"20世纪40年代末，小有成就的青年银行家安迪（蒂姆·罗宾斯 Tim Robbins 饰）因涉嫌杀害妻子及她的情人而锒铛入狱。在这座名为肖申克的监狱内，希望似乎虚无缥缈，终身监禁的惩罚无疑注定了安迪接下来灰暗绝望的人生。未过多久，安迪尝试接近囚犯中颇有声望的瑞德（摩根·弗里曼 Morgan Freeman 饰），请求对方帮自己搞来小锤子。以此为契机，二人逐渐熟稔，安迪也仿佛在鱼龙混杂、罪恶横生、黑白混淆的牢狱中找到属于自己的求生之道。他利用自身的专业知识，帮助监狱管理层逃税、洗黑钱，同时凭借与瑞德的交往在犯人中间也渐渐受到礼遇。表面看来，他已如瑞德那样对那堵高墙从憎恨转变为处之泰然，但是对自由的渴望仍促使他朝着心中的希望和目标前进。而关于其罪行的真相，似乎更使这一切朝前推进了一步";
            data.content = content;
            data.cellHeight = [data sizeForNoticeTitle:content font:[UIFont systemFontOfSize:14]];
            [_dataArr addObject:data];
        }
    }
    return _dataArr;
}


@end
