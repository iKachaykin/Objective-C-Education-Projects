//
//  Math.h
//  Math
//
//  Created by Иван Качайкин on 26.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import <Foundation/Foundation.h>


// Class containing methods for mathematical calculations
// Класс, содержащий методы для математических вычислений
@interface Math : NSObject

// Elementary functions
// Элементарные функции

-(double) abs: (double) x;

-(double) acos: (double) x;

-(double) acosh: (double) x;

-(double) asin: (double) x;

-(double) asinh: (double) x;

-(double) atan: (double) x;

-(double) atanh: (double) x;

-(double) cos: (double) x;

-(double) cosh: (double) x;

-(double) exp: (double) x;

-(double) ln: (double) x;

-(double) log2: (double) x;

-(double) log10: (double) x;

-(double) sign: (double) x;

-(double) sin: (double) x;

-(double) sinh: (double) x;

-(double) tan: (double) x;

-(double) tanh: (double) x;

// Setter for precision
// Сеттер для precision (точность вычислений)
-(void) setPrecision: (double) precision;

@end
