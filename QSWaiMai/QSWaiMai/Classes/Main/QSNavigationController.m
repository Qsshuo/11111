//
//  QSNavigationController.m
//  QSWaiMai
//
//  Created by 钱烁 on 17/8/1.
//  Copyright © 2017年 钱烁. All rights reserved.
//

#import "QSNavigationController.h"
#import "QSBaseViewController.h"

@interface QSNavigationController ()

@end

@implementation QSNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationBar.hidden = YES;
}

- (void)pushViewController:(QSBaseViewController *)viewController animated:(BOOL)animated{
    [super pushViewController:viewController animated:YES];
    if (self.childViewControllers.count > 1) {
        
        
        // 给导航条设置左边按钮
        viewController.navItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"btn_backItem"] style:UIBarButtonItemStylePlain target:self action:@selector(back)];
        
        
    }
    
}


// 点击左边按钮返回
- (void)back {
    [self popViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
