//
//  main.m
//  Objective-C Project#4
//
//  Created by Иван Качайкин on 22.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Complex.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Testing implemented class
        //Тестирование реализованного класса
        Complex* value1 = [[Complex alloc] init], *value2 = [[Complex alloc] init];
        
        [value1 setReal: 1];
        [value1 setImaginary: 1];
        
        [value2 setReal: -3];
        [value2 setImaginary: 4];
        
        NSLog(@"%@\n", [[Complex substract: value1 and: value2] toNSString]);
        NSLog(@"%@\n", [[value1 pow: 5] toNSString]);
        
        [value2 setDefaultForm: 1];
        NSLog(@"%@\n", [value2 toNSString]);
    }
    return 0;
}
