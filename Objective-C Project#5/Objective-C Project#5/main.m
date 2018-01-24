//
//  main.m
//  Objective-C Project#5
//
//  Created by Иван Качайкин on 24.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle* testRectangle = [[Rectangle alloc] init];
        [testRectangle setHeight: 1];
        [testRectangle setWidth: 2];
        NSLog(@"Rectangles height: %i, width: %i.\nRectangles diagonal: %.18g, perimeter: %i, area: %i.\n",
              [testRectangle height], [testRectangle width], [testRectangle diagonal], [testRectangle perimeter],
              [testRectangle area]);
    }
    return 0;
}
