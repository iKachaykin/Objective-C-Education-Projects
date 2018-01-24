//
//  Rectangle.h
//  Objective-C Project#5
//
//  Created by Иван Качайкин on 24.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import <Foundation/Foundation.h>


//Rectangle class
//Класс - Прямоугольник
@interface Rectangle : NSObject

//Method returning area of rectangle
//Метод, возвращающий площадь прямоугольника
-(int) area;

//Method returning diagonal of rectangle
//Метод, возвращающий диагональ прямоугольника
-(double) diagonal;

//Method returning height of rectangle
//Метод, возвращающий высоту прямоугольника
-(int) height;

//Method returning perimeter of rectangle
//Метод, возвращающий периметр прямоугольника
-(int) perimeter;

//Setter for height of rectangle
//Сеттер для высоты прямоугольника
-(void) setHeight: (int) height;

//Setter for width of rectangle
///Сеттер для ширины прямоугольника
-(void) setWidth: (int) width;

//Method returning width of rectangle
//Метод, возвращающий ширину прямоугольника
-(int) width;

@end
