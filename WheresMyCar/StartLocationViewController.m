//
//  StartLocationViewController.m
//  WheresMyCar
//
//  Created by Aubrey Goodman on 4/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "StartLocationViewController.h"
#import "AppDelegate.h"


@interface StartLocationViewController ()

@end

@implementation StartLocationViewController

- (IBAction)startTrackingLocation:(id)sender
{
    // i want to track the user's location using location services
    // so, i need to register for specific events related to location boundary crossings
    AppDelegate* tAppDelegate = [UIApplication sharedApplication].delegate;
    CLLocationManager* tMgr = tAppDelegate.manager;
    tMgr.delegate = self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    AppDelegate* tAppDelegate = [UIApplication sharedApplication].delegate;
    CLLocationManager* tMgr = tAppDelegate.manager;
    [tMgr startUpdatingLocation];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - CLLocationManagerDelegate

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"location updated to: %@",newLocation);
    CLRegion* tRegion = [[CLRegion alloc] initCircularRegionWithCenter:[newLocation coordinate] radius:50 identifier:@"TriggerEnvelope"];
    AppDelegate* tAppDelegate = [UIApplication sharedApplication].delegate;
    CLLocationManager* tMgr = tAppDelegate.manager;
    [tMgr stopUpdatingLocation];
    [tMgr startMonitoringForRegion:tRegion];
}

@end
