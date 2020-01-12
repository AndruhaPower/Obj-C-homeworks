//
//  main.m
//  lesson3
//
//  Created by Andrew on 07/01/2020.
//  Copyright © 2020 Andrew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Animal.h"
#import "Monkey.h"

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
    
//     Cписок студентов
    NSDictionary *students = [NSDictionary dictionaryWithObjectsAndKeys: @23, @"Andrey", @21, @"Alex", @30, @"Alena", @25, @"Nikita", nil];
    
    NSArray *studentsAsObjectsArray = [Student getStudentsList:students];
    
    for (Student *student in studentsAsObjectsArray) {
        NSLog(@"Student name: %@ \n and age: %@", student.name, student.age);
        
        
    // ПРОГРАММА (КОД) НА ВСЕ ПРИНЦИПЫ
        
        // базовый класс животное. инициализация и вызов метода
        Animal *cow = [[Animal alloc] init:@4 sound:@"Moo" name:@"Cow"];
        [cow makeSound];
        
        Animal * elephant = [[Animal alloc] init:@4 sound:@"Phoot" name:@"Elephant"];
        // подкласс животного обезьяна с переопределенным методом makeSound;
        Monkey *gorilla = [[Monkey alloc] init:@"Gorilla"];
        [gorilla makeSound];
        
        NSArray * animalsArray = [NSArray arrayWithObjects:cow, gorilla, elephant, nil];
        
        /* Полиморфизм ? два экземпляра класса Animal реализуют свой метод makeSound, а экземпляр Monkey реализует свой */
        
        for (Animal *animal in animalsArray) {
            [animal makeSound];
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
