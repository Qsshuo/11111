//
//  NSObject+LineFormula.m
//  QSWaiMai
//
//  Created by 钱烁 on 17/8/1.
//  Copyright © 2017年 钱烁. All rights reserved.
//

#import "NSObject+LineFormula.h"



@implementation NSObject (LineFormula)
- (CGFloat)resultWithValue1:(QSValue)value1 andValue2:(QSValue)value2 {
    CGFloat a = (value1.result - value2.result) / (value1.consult - value2.consult);
    CGFloat b = value1.result - (a * value1.consult);
    
    
    return a * [(NSNumber *)self floatValue]  + b;
}

@end
