//
//  AppDelegate.h
//  AppStore
//
//  Created by Apple on 2019/10/22.
//  Copyright © 2019 wt. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentCloudKitContainer *persistentContainer;

- (void)saveContext;
@property (strong, nonatomic) UIWindow *window;


@end

