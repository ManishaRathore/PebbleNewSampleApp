//
//  AppDelegate.h
//  PebbleSampleApp
//
//  Created by Manisha on 12/06/15.
//  Copyright (c) 2015 emx. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <PebbleKit/PebbleKit.h>

@class ViewController;

uuid_t myAppUUIDbytes;;


@interface AppDelegate : UIResponder <UIApplicationDelegate, PBPebbleCentralDelegate, PBWatchDelegate, PBDataLoggingServiceDelegate>


@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@property (strong, nonatomic) PBWatch *connectedWatch;


@end
