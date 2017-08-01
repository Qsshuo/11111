//
//  QSShopViewController.m
//  QSWaiMai
//
//  Created by 钱烁 on 17/8/1.
//  Copyright © 2017年 钱烁. All rights reserved.
//

#import "QSShopViewController.h"
#import "QSfoodDeatilViewController.h"
#import "QSNavigationBar.h"


#define KShopHeaderViewMaxHeight   180
#define KShopHeaderViewMinHeight   64
@interface QSShopViewController ()
@property (nonatomic, weak) UIView *shopHeaderView;
@property (nonatomic, strong) UIBarButtonItem *rightButtonItem;

@end

@implementation QSShopViewController

- (void)viewDidLoad {
    [self setupUI];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blueColor];
    self.navItem.title = @"香河肉饼";
    
    // 设置导航条标题文字颜色 为完全透明
    self.navBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor colorWithWhite:0.4 alpha:0]};
    
    // 默认导航条的背景图片完全透明
    self.navBar.bgImageView.alpha = 0;
    
    
    // 设置导航条右边分享按钮
    _rightButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"btn_share"] style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navItem.rightBarButtonItem = _rightButtonItem;
    self.navBar.tintColor = [UIColor whiteColor];
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
    
    
    // 计算导航条背景图片的透明度
    CGFloat alpha = [@(shopHeaderViewUpdateHeight) resultWithValue1:QSValuemake(64, 1) andValue2:QSValuemake(180, 0)];
    
    self.navBar.bgImageView.alpha = alpha;
    
    // 设置导航条标题文字颜色和导航条背景变化是一样的
    self.navBar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor colorWithWhite:0.4 alpha:alpha]};
    
    // 计算分享按钮的白色值
    CGFloat White = [@(shopHeaderViewUpdateHeight) resultWithValue1:QSValuemake(64, 0.4) andValue2:QSValuemake(180, 1)];
    
    // 设置分类按钮的颜色
    self.navBar.tintColor = [UIColor colorWithWhite:White alpha:1];
 
    
    if (shopHeaderViewUpdateHeight == KShopHeaderViewMaxHeight && self.statusBarStyle != UIStatusBarStyleLightContent) {
        
        self.statusBarStyle = UIStatusBarStyleLightContent;
        
    } else if (shopHeaderViewUpdateHeight == KShopHeaderViewMinHeight && self.statusBarStyle != UIStatusBarStyleDefault){
        self.statusBarStyle = UIStatusBarStyleDefault;
    }
    

    // 恢复到初始值
    [pan setTranslation:CGPointZero inView:pan.view];
    

    
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
