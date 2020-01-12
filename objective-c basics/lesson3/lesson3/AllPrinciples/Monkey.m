//
//  Monkey.m
//  lesson3
//
//  Created by Andrew on 12/01/2020.
//  Copyright © 2020 Andrew. All rights reserved.
//

#import "Monkey.h"
#define MONKEYSOUND @"UHHUHUHUHUH"

// класс - подкласс животного (Animal)

@implementation Monkey

- (instancetype)init:(NSString *)type {
    self = [super init:@4 sound:MONKEYSOUND name:@"Monkey"];
    if (self) {
        self.type = type;
    }
    return self;
}

- (void)makeSound {
    NSLog(@"Monkey makes %@ sound", MONKEYSOUND);
}

@end
