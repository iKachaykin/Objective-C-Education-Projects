//
//  main.m
//  Objective-C Project#3
//
//  Created by Иван Качайкин on 19.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Point2D.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Using Point2D class
        //Использование класса Point2D
        Point2D* point1 = [[Point2D alloc] init];
        Point2D* point2 = [[Point2D alloc] init];
        [point1 setX: 1];
        [point1 setY: 3];
        
        [point2 setX: 4];
        [point2 setY: 7];
        
        NSLog(@"First point: %@\nSecond point: %@\nDistance between this points: %g",
              [point1 toNSString], [point2 toNSString], [Point2D distanceBetween: point1 and: point2]);
    }
    return 0;
}
