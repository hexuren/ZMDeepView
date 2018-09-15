//
//  AppDelegate.h
//  ZMDeepView
//
//  Created by ZM on 2018/9/14.
//  Copyright © 2018年 hexuren. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

