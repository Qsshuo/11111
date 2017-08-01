//
//  NSObject+LineFormula.h
//  QSWaiMai
//
//  Created by 钱烁 on 17/8/1.
//  Copyright © 2017年 钱烁. All rights reserved.
//

#import <Foundation/Foundation.h>
struct QSValue{
    CGFloat consult;
    CGFloat result;
};
typedef struct QSValue QSValue;

CG_INLINE QSValue
QSValuemake(CGFloat consult, CGFloat result){
    QSValue value; value.consult = consult; value.result = result;
    return value;
}

@interface NSObject (LineFormula)
- (CGFloat)resultWithValue1:(QSValue)value1 andValue2:(QSValue)value2;
@end
