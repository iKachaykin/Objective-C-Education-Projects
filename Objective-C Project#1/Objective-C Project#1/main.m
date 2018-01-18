//
//  main.m
//  Objective-C Project#1
//
//  Created by Иван Качайкин on 12.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import <Foundation/Foundation.h>


//Функция вычисляющая экспоненту (заголовок)
double exp(double);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Печать текста
        NSLog(@"Программировать весело!\n");
        
        // Вычитание
        int value1 = 87, value2 = 15, result = 0;
        result = value1 - value2;
        NSLog(@"Разность %i и %i составляет: %i\n", value1, value2, result);
        
        //Исправление ошибок
        int sum;
        //Вычислить результат
        sum = 25 + 37 - 19;
        //Вывести результат
        NSLog(@"Ответ равен %i\n", sum);
        
        //Экспонента
        double x = -1, exponent = 0;
        exponent = exp(x);
        NSLog(@"Значение экспоненты в точке %.0f: %.10f", x, exponent);
    }
    return 0;
}

//Функция вычисляющая экспоненту (реализация)
double exp(double x){
    double res = 0.0, comp = 1.0;
    for (int i = 1; comp > 1e-12 || comp < -1e-12; i++){
        res += comp;
        comp *= x / i;
    }
    return res;
}

