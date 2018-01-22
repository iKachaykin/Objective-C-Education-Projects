//
//  Complex.m
//  Objective-C Project#4
//
//  Created by Иван Качайкин on 22.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#define EPS 1e-16
#define PI 3.141592653589793238

#import "Complex.h"
#import <math.h>


//Implementation of (Complex) class
//Реализация класса (Complex)

@implementation Complex {
    double imaginary;
    double real;
    char defaultForm;
}


//Logic of methods described in header
//Логика методов описана в заголовочном файле

+(void) copyTo: (Complex*) dest from: (Complex*) source {
    [dest setImaginary: source->imaginary];
    [dest setReal: source->real];
}

+(Complex*) divide: (Complex*) left and: (Complex*) right {
    if (right->imaginary == 0 && right->real == 0)
        return NULL;
    Complex* quotient = [[Complex alloc] init];
    [quotient setImaginary: (left->imaginary * right->real - left->real * right->imaginary) / [right abs] / [right abs]];
    [quotient setReal: (left->real * right->real + left->imaginary * right->imaginary) / [right abs] / [right abs]];
    return quotient;
}

+(Complex*) multiply: (Complex*) left and: (Complex*) right {
    Complex* product = [[Complex alloc] init];
    [product setImaginary: left->imaginary * right->real + left->real * right->imaginary];
    [product setReal: left->real * right->real - left->imaginary * right->imaginary];
    return product;
}

+(Complex*) substract: (Complex*) left and: (Complex*) right {
    Complex* difference = [[Complex alloc] init];
    [difference setImaginary: left->imaginary - right->imaginary];
    [difference setReal: left->real - right->real];
    return difference;
}

+(Complex*) sum: (Complex*) left and: (Complex*) right {
    Complex* sum = [[Complex alloc] init];
    [sum setImaginary: left->imaginary + right->imaginary];
    [sum setReal: left->real + right->real];
    return sum;
}

-(double) abs {
    return sqrt(self->real * self->real + self->imaginary * self->imaginary);
}

-(double) arg {
    if(real > EPS)
        return atan(imaginary / real);
    else if (real < -EPS && imaginary > -EPS)
        return atan(imaginary / real) + PI;
    else if (real < -EPS && imaginary < -EPS)
        return atan(imaginary / real) - PI;
    else if (real > -EPS && imaginary > EPS)
        return PI / 2;
    else if (real > -EPS && imaginary < -EPS)
        return -PI / 2;
    else
        return NAN;
}

-(Complex*) conjugate {
    Complex* result = [[Complex alloc] init];
    [result setImaginary: -self->imaginary];
    [result setReal: self->real];
    return result;
}

-(NSString*) exponentialForm {
    return [NSString stringWithFormat: @"%g * exp(i * %g)", [self abs], [self arg]];
}

-(double) imaginary {
    return imaginary;
}

-(NSString*) polarForm{
    return [NSString stringWithFormat: @"%g * (cos(%g) + i * sin(%g))", [self abs], [self arg], [self arg]];
}

-(Complex*) pow: (int) n {
    Complex* result = [[Complex alloc] init];
    [result setImaginary: [self abs] * sin(n * [self arg])];
    [result setReal: [self abs] * cos(n * [self arg])];
    return result;
}

-(double) real {
    return real;
}

-(NSString*) toNSString {
    return @"";
}

-(void) setImaginary: (double) imaginary {
    self->imaginary = imaginary;
}

-(void) setReal: (double) real {
    self->real = real;
}

@end
