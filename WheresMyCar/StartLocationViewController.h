//
//  StartLocationViewController.h
//  WheresMyCar
//
//  Created by Aubrey Goodman on 4/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>


@interface StartLocationViewController : UIViewController <CLLocationManagerDelegate>

-(IBAction)startTrackingLocation:(id)sender;

@end
