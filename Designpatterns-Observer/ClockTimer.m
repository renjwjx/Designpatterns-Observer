//
//  ClockTimer.m
//  Designpatterns-Observer
//
//  Created by jinren on 08/05/2018.
//  Copyright © 2018 jinren. All rights reserved.
//

#import "ClockTimer.h"

@implementation ClockTimer
- (void)tick
{
    NSLog(@"ClockTimer Tick");
    [self Notify];
}

- (void)startTimer
{
    NSTimer* tim = [NSTimer timerWithTimeInterval:1 repeats:YES block:^(NSTimer * _Nonnull timer) {
        NSLog(@"Timer trigger");
        [self Notify];
    }];
    [[NSRunLoop currentRunLoop] addTimer:tim forMode:NSDefaultRunLoopMode];
}
@end
