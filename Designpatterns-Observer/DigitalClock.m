//
//  DigitalClock.m
//  Designpatterns-Observer
//
//  Created by jinren on 08/05/2018.
//  Copyright © 2018 jinren. All rights reserved.
//

#import "DigitalClock.h"

@implementation DigitalClock
- (void)update {
    NSLog(@"DigitalClock update: %@", [NSDate date]);
}
@end
