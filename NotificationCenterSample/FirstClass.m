//
//  FirstClass.m
//  NotificationCenterSample
//
//  Created by Avadesh Yadav on 10/16/13.
//  Copyright (c) 2013 Strumsoft. All rights reserved.
//

#import "FirstClass.h"

@implementation FirstClass

- (id)init
{
    self = [super init];
    
    if (self) {
        [self registerForNotification];
    }
    
    return self;
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - Private Methods
- (void)registerForNotification
{
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(didReceivedButtonPressedNotification:) name:kNotifyButtonPressedNotificationName object:nil];
}

- (void)didReceivedButtonPressedNotification:(NSNotification *)notification
{
    NSLog(@"Received Notification in First Class From:%@", [[notification userInfo] objectForKey:@"name"]);
}

@end
