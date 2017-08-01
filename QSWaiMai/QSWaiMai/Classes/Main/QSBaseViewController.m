//
//  QSBaseViewController.m
//  QSWaiMai
//
//  Created by 钱烁 on 17/8/1.
//  Copyright © 2017年 钱烁. All rights reserved.
//

#import "QSBaseViewController.h"

@interface QSBaseViewController ()

@end

@implementation QSBaseViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        // 为每一个继承至此类的控制器都添加一个导航条
        QSNavigationBar *navBar = [[QSNavigationBar alloc] init];
        // 给导航条添加UINavigationItem
        UINavigationItem *navItem = [[UINavigationItem alloc] init];
        // 把UINavigationItem设置到导航条上'建立它和导航条控件的关系'
        [navBar setItems:@[navItem]];
        
        _navBar = navBar;
        _navItem = navItem;
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:_navBar];
    [_navBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.offset(0);
        make.height.offset(64);
    }];
    

}

- (void)setStatusBarStyle:(UIStatusBarStyle)statusBarStyle {
    _statusBarStyle = statusBarStyle;
    
    // 让设置状态栏样式的方法重新调用
    [self setNeedsStatusBarAppearanceUpdate];
}

// 设置状态栏式
- (UIStatusBarStyle)preferredStatusBarStyle {
    return self.statusBarStyle;
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
