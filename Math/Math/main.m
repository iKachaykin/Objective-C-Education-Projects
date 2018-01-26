//
//  main.m
//  Math
//
//  Created by Иван Качайкин on 26.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Math.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Math* mathematics = [[Math alloc] init];
        [mathematics setPrecision: 1e-18];
        NSLog(@"%.16g", [mathematics exp: 1]);
    }
    return 0;
}
