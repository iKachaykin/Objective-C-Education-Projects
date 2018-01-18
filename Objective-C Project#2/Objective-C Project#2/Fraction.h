//
//  Fraction.h
//  Objective-C Project#2
//
//  Created by Иван Качайкин on 14.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import <Foundation/Foundation.h>


//Function returning greatest common divisor of left and right
//Функция возвращающая наибольший общий делитель чисел left и right
int gcd (int, int);

//Function returning least common multiple of left and right
//Функция возвращающая наименьшее общее кратное чисел left и right
int lcm (int, int);

//Class which implement rational fractions
//Класс реализующий рациональные дроби
@interface Fraction : NSObject

//Multiplication of fractions
//Умножение дробей
-(Fraction*) composition: (Fraction*) other;

//Method which copy data from source to dest (shallow copy)
//Метод, который копирует данные из source в dest (неглубокая копия)
+(void) copyTo: (Fraction*) dest from: (Fraction*) source;

//Method which get denominator of fraction
//Метод, возвращающий знаменатель дроби
-(int) denominator;

//Division of fractions
//Деление дробей
-(Fraction*) division: (Fraction*) other;

//Property returning fractional part of fraction
//Свойство возвращающее дробную часть дроби
-(Fraction*) fractionalPart;

//Property returning intger part of fraction
//Свойство возвращающее целую часть дроби
-(int) intPart;

//Property returning true if fraction irreducible and false otherwise
//Свойство, возвращающее true, если дробь - несократимая, и false - в противном случае
-(bool) irreducible;

//Method which get numerator of fraction
//Метод, возвращающий числитель дроби
-(int) numerator;

//Property returning true if fraction is proper and false otherwise
//Свойство, возвращающее true, если дробь - правильная, и false - в противном случае
-(bool) proper;

//Method that reduce fractions
//Метод, что сокращает дробь
-(void) reduce;

//Property returning reduced clone of fraction
//Свойство возвращающее сокращенную несократимую дробь, равную данной
-(Fraction*) reducedClone;

//Method which set denominator of fraction
//Метод, задающий знаменатель дроби
-(void) setDenominator: (int) denominator;

//Method which set numerator of fraction
//Метод, задающий числитель дроби
-(void) setNumerator: (int) numerator;

//Substracting of fractions
//Вычитание дробей
-(Fraction*) substract: (Fraction*) other;

//Summing of fractions
//Суммирование дробей
-(Fraction*) sum: (Fraction*) other;

//Method which convert (Fraction) to (double)
//Метод преобразования (Fraction) в (double)
-(double) toDouble;

//Method which convert (Fraction) to (NSString*)
//Метод преобразования (Fraction) в (NSString*)
-(NSString*) toNSString;

@end
