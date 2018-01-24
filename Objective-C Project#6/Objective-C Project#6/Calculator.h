//
//  Calculator.h
//  Objective-C Project#6
//
//  Created by Иван Качайкин on 24.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import <Foundation/Foundation.h>


// Calculator class
// Класс "Калькулятор"

@interface Calculator : NSObject

// Getter for accumulator
// Геттер для сумматора
-(double) accumulator;

// Method which add value to accumulator
// Метод, прибавляющий значение value к сумматору
-(double) add: (double) value;

// Method which change accumulator sign
// Метод, меняющий знак сумматора на противоположный
-(double) changeSign;

// Method which set accumulator to zero
// Метод, выставляющий значение сумматора к нулю
-(void) clear;

// Method dividing accumulator by value
// Метод, который делит значение сумматора на value
-(double) divide: (double) value;

// Method which multiply value and accumulator
// Метод, умножающий значение value на значение сумматора
-(double) multiply: (double) value;

// Method which set to accumulator its reciprocal (1 / accumulator)
// Метод, выставляющий в сумматор значение, обратное самому себе (1 / accumulator)
-(double) reciprocal;

// Setter for accumulator
// Сеттер для сумматора
-(void) setAccumulator: (double) value;

// Method which square accumulator
// Метод, возводящий сумматор в квадрат
-(double) square;

// Method which substract value from accumulator
// Метод, отнимающий value из сумматора
-(double) substract: (double) value;

@end
