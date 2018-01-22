//
//  Complex.h
//  Objective-C Project#4
//
//  Created by Иван Качайкин on 22.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import <Foundation/Foundation.h>


//Class corresponding to complex number
//Класс для работы с комлексными числами

@interface Complex : NSObject

//Method copying (shallow) data from source to dest
//Метод, осуществляющий неглубокую копию данных из source в dest
+(void) copyTo: (Complex*) dest from: (Complex*) source;

//Method returning result of division of left and right (left / right)
//Метод, возвращающий результат деления left на right (left / right)
+(Complex*) divide: (Complex*) left and: (Complex*) right;

//Method returning result of multiplication of left and right (left * right)
//Метод, возвращающий результат умножения чисел left и right (left * right)
+(Complex*) multiply: (Complex*) left and: (Complex*) right;

//n-th power of complex number
//n-я степень комплексного числа
+(Complex*) pow: (Complex*) number to: (int) power;

//Method returning result of substraction of left and right (left - right)
//Метод, возвращающий результат вычитания из left числа right (left - right)
+(Complex*) substract: (Complex*) left and: (Complex*) right;

//Method returning result of summation of left and right (left + right)
//Метод, возвращающий результат сложения left и right (left + right)
+(Complex*) sum: (Complex*) left and: (Complex*) right;

//Method returning absolute value of complex number
//Метод, возвращающий модуль комплексного числа
-(double) abs;

//Algebraic form of complex number
//Алгебраическая форма комплексного числа
-(NSString*) algebraicForm;

//Method returning argument of complex number
//Метод, возвращающий аргумент комплексного числа
-(double) arg;

//Method returning complex conjugate of self
//Метод, возвращающий комплексно-сопряженное число к self
-(Complex*) conjugate;

//Exponential form of complex number
//Экспоненциальная форма комплексного числа
-(NSString*) exponentialForm;

//Getter for imaginary part of complex number
//Геттер для мнимой части комплексного числа
-(double) imaginary;

//Polar form of complex number
//Тригонометрическая форма комплексного числа
-(NSString*) polarForm;

//n-th power of complex number
//n-я степень комплексного числа
-(Complex*) pow: (int) n;

//Getter for real part of complex number
//Геттер для действительной части комплексного числа
-(double) real;

//Setter for default to convert to string form of complex number
//Сеттер для формы комплексного числа при преобразовании в строку по-умолчанию
-(void) setDefaultForm: (char) defaultForm;

//Setter for imaginary part of complex number
//Сеттер для мнимой части комплексного числа
-(void) setImaginary: (double) imaginary;

//Setter for real part of complex number
//Сеттер для дейтствительной части комплексного числа
-(void) setReal: (double) real;

//Method converting (Complex) to (NSString)
//Метод, преобразующий (Complex) в (NSString)
-(NSString*) toNSString;

@end
