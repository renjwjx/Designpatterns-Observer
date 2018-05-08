//
//  AppDelegate.m
//  Designpatterns-Observer
//
//  Created by jinren on 08/05/2018.
//  Copyright © 2018 jinren. All rights reserved.
//

#import "AppDelegate.h"
#import "ClockTimer.h"
#import "DigitalClock.h"
#import "AnalogClock.h"

@interface AppDelegate ()
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    ClockTimer* clockTimer = [[ClockTimer alloc] init];
    
    DigitalClock* digitalClk = [[DigitalClock alloc] init];
    AnalogClock* analogClk = [[AnalogClock alloc] init];
    [clockTimer Attach:digitalClk];
    [clockTimer Attach:analogClk];
    
    [clockTimer startTimer];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
