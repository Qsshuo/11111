//
//  QSSnopViewController.m
//  QSWaiMaiTakeaway
//
//  Created by 钱烁 on 17/7/30.
//  Copyright © 2017年 钱烁. All rights reserved.
//
//点餐


#import "QSSnopViewController.h"
#import "QSFoodDeatilViewController.h"

@interface QSSnopViewController ()

@end

@implementation QSSnopViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    self.navBar.barTintColor = [UIColor redColor];
    // 设置导航条的标题
    self.navItem.title = @"1111";
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    QSFoodDeatilViewController *foodDeatilVC = [[QSFoodDeatilViewController alloc] init];
    
    [self.navigationController pushViewController:foodDeatilVC animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
