//
//  Fraction.m
//  Objective-C Project#2
//
//  Created by Иван Качайкин on 14.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import "Fraction.h"
#import <math.h>


//(Fraction) implementation
//Реализация класса Fraction
@implementation Fraction {
    int numerator;      //the numerator of fraction --- числитель дроби
    int denominator;    //the denominator of fraction --- знаменатель дроби
}

//Logic of methods described in header
//Логика методов описана в заголовочном файле

+(void) copyTo: (Fraction*) dest from: (Fraction*) source {
    [dest setNumerator: [source numerator]];
    [dest setDenominator: [source denominator]];
}

-(NSString*) toNSString {
    NSString* result = @"";
    if (numerator * denominator < 0)
        result = [result stringByAppendingString: @"-"];
    result = [result stringByAppendingString: [NSString stringWithFormat: @"%i ", abs(numerator)]];
    if (numerator != 0 && abs(denominator) != 1)
        result = [result stringByAppendingString: [NSString stringWithFormat: @"/ %i ", abs(denominator)]];
    return result;
}

-(double) toDouble {
    return numerator * 1.0 / denominator;
}

-(void) setNumerator: (int) numerator {
    self->numerator = numerator;
}

-(void) setDenominator: (int) denominator {
    self->denominator = denominator == 0 ? 1 : denominator;
}

-(Fraction*) sum: (Fraction*) other {
    Fraction* result = [[Fraction alloc] init];
    [result setDenominator: lcm(denominator, [other denominator])];
    [result setNumerator: numerator * [result denominator] / denominator + [other numerator] * [result denominator] / [other denominator]];
    return result;
}

-(Fraction*) substract: (Fraction*) other {
    Fraction* result = [[Fraction alloc] init];
    [result setDenominator: lcm(denominator, [other denominator])];
    [result setNumerator: numerator * [result denominator] / denominator - [other numerator] * [result denominator] / [other denominator]];
    return result;
}

-(Fraction*) composition: (Fraction*) other {
    Fraction* result = [[Fraction alloc] init];
    [result setDenominator: denominator * [other denominator]];
    [result setNumerator: numerator * [other numerator]];
    return result;
}

-(Fraction*) division: (Fraction*) other {
    Fraction* result = [[Fraction alloc] init];
    [result setDenominator: denominator * [other numerator]];
    [result setNumerator: numerator * [other denominator]];
    return result;
}

-(bool) proper {
    return abs(numerator) < abs(denominator);
}

-(int) numerator {
    return numerator;
}

-(int) denominator {
    return denominator;
}

-(Fraction*) reducedClone {
    int tmpNumerator, tmpDenominator;
    Fraction* clone = [[Fraction alloc] init];
    [Fraction copyTo: clone from: self];
    while (![clone irreducible]) {
        tmpNumerator = [clone numerator];
        tmpDenominator = [clone denominator];
        [clone setNumerator: [clone numerator] / gcd(tmpNumerator, tmpDenominator)];
        [clone setDenominator: [clone denominator] / gcd(tmpNumerator, tmpDenominator)];
    }
    return clone;
}

-(void) reduce {
    [Fraction copyTo: self from: [self reducedClone]];
}

-(bool) irreducible {
    return gcd(numerator, denominator) == 1 || gcd(numerator, denominator) == 0 ? true : false;
}

-(int) intPart {
    return numerator / denominator;
}

-(Fraction*) fractionalPart {
    Fraction* result = [[Fraction alloc] init];
    [result setNumerator: numerator % denominator];
    [result setDenominator: denominator];
    return result;
}

@end

int lcm (int left, int right) {
    return abs(left) * abs(right) / gcd(left, right);
}

int gcd (int left, int right) {
    if (left == 0 && right == 0)
        return 0;
    else if (left == 0)
        return right;
    else if (right == 0)
        return left;
    int absLeft = abs(left), absRight = abs(right);
    for (int result = absLeft < absRight ? absLeft : absRight; result > 1; result--)
        if (!(absLeft % result || absRight % result))
            return result;
    return 1;
}
