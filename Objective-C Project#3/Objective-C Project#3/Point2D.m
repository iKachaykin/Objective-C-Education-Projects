//
//  Point2D.m
//  Objective-C Project#3
//
//  Created by Иван Качайкин on 19.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import "Point2D.h"
#import <math.h>


//Implementation of two-dimensional point class
//Реализация класса двумерной точки
@implementation Point2D {
    double X;
    double Y;
}

//Logic of methods described in header
//Логика методов описана в заголовочном файле

+(double) distanceBetween: (Point2D*) left and: (Point2D*) right {
    return sqrt((left.X - right.X) * (left.X - right.X) + (left.Y - right.Y) * (left.Y - right.Y));
}

-(void) setX: (double) X {
    self->X = X;
}

-(void) setY: (double) Y {
    self->Y = Y;
}

-(NSString*) toNSString {
    return [NSString stringWithFormat: @"(%g, %g)", X, Y];
}

-(double) X {
    return X;
}

-(double) Y {
    return Y;
}

@end
