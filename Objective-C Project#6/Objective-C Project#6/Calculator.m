//
//  Calculator.m
//  Objective-C Project#6
//
//  Created by Иван Качайкин on 24.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import "Calculator.h"


// (Calculator) implementation
// Реализация класса (Calculator)

@implementation Calculator {
    double accumulator;
}

// Purpose of methods described in interface
// Назначение методов описана в интерфейсе

-(double) accumulator {
    return accumulator;
}

-(double) add: (double) value {
    accumulator += value;
    return accumulator;
}

-(double) changeSign {
    accumulator = -accumulator;
    return accumulator;
}

-(void) clear {
    accumulator = 0;
}

-(double) divide: (double) value {
    accumulator /= value;
    return accumulator;
}

-(double) multiply: (double) value {
    accumulator *= value;
    return accumulator;
}

-(double) reciprocal {
    accumulator = 1 / accumulator;
    return accumulator;
}

-(void) setAccumulator: (double) value {
    accumulator = value;
}

-(double) square {
    accumulator *= accumulator;
    return accumulator;
}

-(double) substract: (double) value {
    accumulator -= value;
    return accumulator;
}

@end
