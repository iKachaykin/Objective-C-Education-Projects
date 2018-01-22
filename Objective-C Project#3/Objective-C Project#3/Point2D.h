//
//  Point2D.h
//  Objective-C Project#3
//
//  Created by Иван Качайкин on 19.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import <Foundation/Foundation.h>


//Class for two-dimensional points
//Класс для двумерных точек
@interface Point2D : NSObject

//Method calculating distance between points left and right
//Метод, вычисляющий расстояние между точками left и right
+(double) distanceBetween: (Point2D*) left and: (Point2D*) right;

//Setter for X
//Сеттер для Х
-(void) setX: (double) X;

//Setter for Y
//Сеттер для Y
-(void) setY: (double) Y;

//Method converting (Point2D) to (NSString*)
//Метод, преобразующий (Point2D) в (NSString*)
-(NSString*) toNSString;

//Getter for X
//Геттер для Х
-(double) X;

//Getter for Y
//Геттер для Y
-(double) Y;

@end
