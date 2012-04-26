//
//  AppDelegate.h
//  WheresMyCar
//
//  Created by Aubrey Goodman on 4/15/12.
//  Copyright (c) 2012 Migrant Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartLocationViewController.h"
#import <CoreLocation/CoreLocation.h>


@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    
    CLLocationManager* manager;
    
}

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (strong) CLLocationManager* manager;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@property (strong, nonatomic) StartLocationViewController *startLocationViewController;

@end
