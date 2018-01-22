//
//  main.m
//  Objective-C Project#4
//
//  Created by Иван Качайкин on 22.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        double test = 1.0;
        test = 1;
        unsigned short int tmp = 0;
        NSLog(@"%lu", sizeof(test));
        NSLog(@"%lu",sizeof(char));
    }
    return 0;
}
