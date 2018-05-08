//
//  Subject.m
//  Designpatterns-Observer
//
//  Created by jinren on 08/05/2018.
//  Copyright © 2018 jinren. All rights reserved.
//

#import "Subject.h"
@interface Subject()
@property (strong, nonatomic)NSMutableArray* observers;
@end
@implementation Subject

- (instancetype)init
{
    self = [super init];
    if (self) {
        _observers = [NSMutableArray arrayWithCapacity:10];
    }
    return self;
}
- (void)Attach:(Observer *)observer {
    NSLog(@"observer Attach");
    [_observers addObject:observer];
}

- (void)Detach:(Observer *)observer {
    NSLog(@"Observer Detach");
    [_observers removeObject:observer];
}

- (void)Notify { 
    NSLog(@"Subject Notify");
    for (Observer* ob in _observers) {
        [ob update];
    }
}

@end
