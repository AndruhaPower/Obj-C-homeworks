//
//  AppDelegate.h
//  objective-c basics
//
//  Created by Andrew on 01/12/2019.
//  Copyright © 2019 Andrew. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;

-(BOOL) englishAlphabetCheck: (NSString *) character;

@end

