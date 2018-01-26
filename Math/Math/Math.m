//
//  Math.m
//  Math
//
//  Created by Иван Качайкин on 26.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import "Math.h"

@implementation Math {
    double e;
    double EPS;
    double PI;
    double precision;
}

-(instancetype)init {
    self = [super init];
    self->e = 2.718281828459045235;
    self->PI = 3.141592653589793238;
    self->EPS = 1e-17;
    self->precision = 1e-17;
    return self;
}

-(double) abs: (double) x {
    return x > EPS ? x : x < -EPS ? -x : 0.0;
}

-(double) exp: (double) x {
    if (x > EPS)
        return 1 / [self exp: -x];
    else {
        double result = 0.0, tmp = 1.0;
        for (int i = 1; [self abs: tmp] > precision; i++) {
            result += tmp;
            tmp *= x / i;
        }
        return result;
    }
}

-(void) setPrecision: (double) precision {
    self->precision = precision;
}

@end
