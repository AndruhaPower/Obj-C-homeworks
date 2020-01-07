//
//  main.m
//  lesson3
//
//  Created by Andrew on 07/01/2020.
//  Copyright © 2020 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Читает цифры введенные пользователем и разом печатает все введенные данные
        
        NSLog(@"Please input a capacity of the array: \n");
        int capacity;
        scanf("%d", &capacity);
        NSMutableArray *numbersArray = [NSMutableArray arrayWithCapacity:capacity];
        int i = 0;
        while (i <= capacity) {
            NSLog(@"\n Input a number");
            int userNum;
            scanf("%d", &userNum);
            NSNumber *number = [NSNumber numberWithInt:userNum];
            [numbersArray insertObject:number atIndex:i];
            i++;
        }
        NSLog(@"Your numbers are:\n");
        
        for (NSNumber *increment in numbersArray) {
            NSLog(@"%@", increment);
        }
    }
    return 0;
}

// Улучшенный калькулятор

enum Operations {
    addition,
    subtraction,
    division,
    mupliplication
};

typedef enum Operations Operations;

int calculate(int a, int b, Operations operation) {
    switch (operation) {
        case addition:
            return a+b;
            break;
        case subtraction:
            return a-b;
            break;
        case division:
            return a / b;
            break;
        case mupliplication:
            return a * b;
    }
}

// *
struct User {
    char name[20];
};
