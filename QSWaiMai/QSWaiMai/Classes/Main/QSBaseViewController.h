//
//  QSBaseViewController.h
//  QSWaiMai
//
//  Created by 钱烁 on 17/8/1.
//  Copyright © 2017年 钱烁. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QSNavigationBar.h"

@interface QSBaseViewController : UIViewController
///导航条
@property (nonatomic,strong,readonly) QSNavigationBar *navBar;
///导航项
@property (nonatomic,strong,readonly) UINavigationItem *navItem;
// 状态栏样式
@property (nonatomic, assign) UIStatusBarStyle statusBarStyle;

@end
