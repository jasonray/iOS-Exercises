//
//  WhereamiAppDelegate.h
//  Whereami
//
//  Created by Ray, Jason on 10/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>
#import <UIKit/UIKit.h>

@interface WhereamiAppDelegate : NSObject <UIApplicationDelegate> 
{
    CLLocationManager *locationManager;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
