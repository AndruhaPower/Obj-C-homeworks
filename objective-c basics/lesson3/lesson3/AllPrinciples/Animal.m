//
//  Animal.m
//  lesson3
//
//  Created by Andrew on 12/01/2020.
//  Copyright © 2020 Andrew. All rights reserved.
//

#import "Animal.h"

// Базовый класс животного

@implementation Animal

- (instancetype)init:(NSNumber *)legs sound:(NSString *)sound name:(NSString *)name {
    self = [super init];
    if (self) {
        self.legs = legs;
        self.sound = sound;
        self.name = name;
    }
    return self;
}

- (void)makeSound {
    NSLog(@"The %@ makes %@ sound!", self.name, self.sound);
}
// полиморфизм? 
+ (void)primalCall:(NSArray<Animal *> *)animalsArray {
    for (Animal *animal in animalsArray) {
        [animal makeSound];
    }
}

@end
