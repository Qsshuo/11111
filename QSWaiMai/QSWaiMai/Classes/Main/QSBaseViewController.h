//
//  QSBaseViewController.h
//  QSWaiMai
//
//  Created by 钱烁 on 17/8/1.
//  Copyright © 2017年 钱烁. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QSBaseViewController : UIViewController
///导航条
@property (nonatomic,strong,readonly) UINavigationBar *navBar;
///导航项
@property (nonatomic,strong,readonly) UINavigationItem *navItem;

@end
