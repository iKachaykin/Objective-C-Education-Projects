//
//  main.m
//  Objective-C Project#7
//
//  Created by Иван Качайкин on 26.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import <Foundation/Foundation.h>


// Function which calculate sum of inputed number's digits
// Функция вычисляющая сумму цифр заданного числа
int digitSum(int);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Testing of implemented function
        // Тестирование реализованной функции
        int number = 0;
        NSLog(@"Input a number: ");
        scanf("%i", &number);
        NSLog(@"The sum of digits of number: %i, is: %i\n", number, digitSum(number));
    }
    return 0;
}

// Definition
// Определение
int digitSum(int number) {
    int result = 0;
    number = number >= 0 ? number : -number;
    while (number != 0) {
        result += number % 10;
        number /= 10;
    }
    return result;
}
