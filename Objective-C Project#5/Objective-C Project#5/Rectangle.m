//
//  Rectangle.m
//  Objective-C Project#5
//
//  Created by Иван Качайкин on 24.01.2018.
//  Copyright © 2018 Иван Качайкин. All rights reserved.
//

#import "Rectangle.h"
#import <math.h>


//Implementation of class (Rectangle)
//Реализация класса (Rectangle)

@implementation Rectangle {
    int height;
    int width;
}

//Sense of methods described in header
//Смысл методова описан в заголовочном файле

-(int) area {
    return height * width;
}

-(double) diagonal {
    return sqrt(height * height + width * width);
}

-(int) height {
    return height;
}

-(int) perimeter {
    return 2 * (width + height);
}

-(void) setHeight: (int) height {
    self->height = height;
}

-(void) setWidth: (int) width {
    self->width = width;
}

-(int) width {
    return width;
}

@end
