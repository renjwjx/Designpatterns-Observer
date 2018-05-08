//
//  Subject.h
//  Designpatterns-Observer
//
//  Created by jinren on 08/05/2018.
//  Copyright © 2018 jinren. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"
@interface Subject : NSObject
- (instancetype)init;
- (void)Attach:(Observer*)observer;
- (void)Detach:(Observer*)observer;
- (void)Notify;
@end
