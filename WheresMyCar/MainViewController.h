//
//  MainViewController.h
//  WheresMyCar
//
//  Created by Aubrey Goodman on 4/15/12.
//  Copyright (c) 2012 Migrant Studios. All rights reserved.
//

#import "FlipsideViewController.h"

#import <CoreData/CoreData.h>

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate>

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (IBAction)showInfo:(id)sender;

@end
