//
//  QSBaseViewController.m
//  QSWaiMaiTakeaway
//
//  Created by 钱烁 on 17/7/30.
//  Copyright © 2017年 钱烁. All rights reserved.
//

#import "QSBaseViewController.h"
#import "AFNetworking.h"
#import "Masonry.h"
#import "UIImageView+WebCache.h"

@interface QSBaseViewController ()

@end

@implementation QSBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UINavigationBar *navBar = [[UINavigationBar alloc] init];
    [self.view addSubview:navBar];
    [navBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.offset(0);
        make.height.offset(64);
    }];
    
    UINavigationItem *navItem = [[UINavigationItem alloc] init];
    [navBar setItems:@[navItem]];
    
    _navBar = navBar;
    _navItem = navItem;
    
    
    
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
