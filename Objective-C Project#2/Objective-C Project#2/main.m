//
//  main.m
//  Objective-C Project#2
//
//  Created by Иван Качайкин on 14.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Creating the (Fraction) object
        //Создание объекта (Fraction)
        Fraction* myFraction = [[Fraction alloc] init];
        
        //Setting numerator and denominator
        //Выставление значений для числителя и знаменателя
        [myFraction setNumerator: 2];
        [myFraction setDenominator: -4];
        
        //Printing (Fraction) object
        //Печать объекта (Fraction)
        NSLog([[myFraction reducedClone] toNSString]);
        
        //Printing numerator and denominator of (Fraction) separately
        //Печать числителя и знаменателя дроби ((Fraction)) по отдельности
        NSLog(@"\nNumerator: %i\nDenominator: %i\n", [myFraction numerator], [myFraction denominator]);
    }
    return 0;
}
