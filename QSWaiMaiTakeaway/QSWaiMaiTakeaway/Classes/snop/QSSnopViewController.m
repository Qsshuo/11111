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
#import "AFNetworking.h"
#import "Masonry.h"
#import "UIImageView+WebCache.h"


#define KShopHeaderViewMaxHeight   180
#define KShopHeaderViewMinHeight   64
@interface QSSnopViewController ()
@property (nonatomic, weak) UIView *shopHeaderView;


@end

@implementation QSSnopViewController


- (void)viewDidLoad {
     [self setupUI];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
//    self.navBar.barTintColor = [UIColor redColor];
    // 设置导航条的标题
    self.navItem.title = @"1111";
}
//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    QSFoodDeatilViewController *foodDeatilVC = [[QSFoodDeatilViewController alloc] init];
//    
//    [self.navigationController pushViewController:foodDeatilVC animated:YES];
//    
//}
- (void)setupUI {
    
    UIView *shopHeaderView = [[UIView alloc] init];
    shopHeaderView.backgroundColor = [UIColor redColor];
    [self.view addSubview:shopHeaderView];
    
    
    [shopHeaderView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.right.offset(0);
        make.height.offset(KShopHeaderViewMaxHeight);
    }];
    
    
    // 添加平移
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panGesture:)];
    [self.view addGestureRecognizer:pan];
    
    
    _shopHeaderView = shopHeaderView;
}

- (void)panGesture:(UIPanGestureRecognizer *)pan {
    
    // 平移的距离
    CGPoint p = [pan translationInView:pan.view];
    // 头部视图的高度
    CGFloat shopHeaderViewUpdateHeight = _shopHeaderView.bounds.size.height;
    
    [_shopHeaderView mas_updateConstraints:^(MASConstraintMaker *make) {
        
        if (p.y + shopHeaderViewUpdateHeight < KShopHeaderViewMinHeight) {
            
            make.height.offset(KShopHeaderViewMinHeight);
            
        } else if (p.y + shopHeaderViewUpdateHeight >= KShopHeaderViewMaxHeight) {
            
            make.height.offset(KShopHeaderViewMaxHeight);
            
        } else {
            
            make.height.offset(p.y + shopHeaderViewUpdateHeight);
        }
        
        
        
    }];
    
    
    [pan setTranslation:CGPointZero inView:pan.view];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
