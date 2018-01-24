//
//  main.m
//  Objective-C Project#6
//
//  Created by Иван Качайкин on 24.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator* calc = [[Calculator alloc] init];
        NSLog(@"%g\n", [calc add: 31]);
        NSLog(@"%g\n", [calc substract: 6]);
        NSLog(@"%g\n", [calc divide: 5]);
        NSLog(@"%g\n", [calc multiply: 2]);
        NSLog(@"%g\n", [calc square]);
        NSLog(@"%g\n", [calc reciprocal]);
        [calc clear];
        [calc setAccumulator: 21.256];
        NSLog(@"%g\n", [calc accumulator]);
    }
    return 0;
}
