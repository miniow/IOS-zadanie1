//
//  AppDelegate.h
//  firstapp
//
//  Created by student on 30/10/2023.
//  Copyright © 2023 P. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

