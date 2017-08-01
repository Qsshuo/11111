//
//  QSNavigationBar.m
//  QSWaiMaiTakeaway
//
//  Created by 钱烁 on 17/7/30.
//  Copyright © 2017年 钱烁. All rights reserved.
//

#import "QSNavigationBar.h"
#import "Masonry.h"

@implementation QSNavigationBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setShadowImage:[UIImage new]];
        [self setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
        
        
        
        UIImageView *bgImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"bg_navigationBar_white"]];
        [self addSubview:bgImageView];
        
        [bgImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.offset(0);
        }];
        
        _bgImageView = bgImageView;
        
    }
    return self;
}

@end
