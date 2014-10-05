//
//  ThirdClass.m
//  NotificationCenterSample
//
//  Created by Avadesh Yadav on 10/16/13.
//  Copyright (c) 2013 Strumsoft. All rights reserved.
//

#import "ThirdClass.h"

@interface ThirdClass ()

- (void)registerForNotification;
@end

@implementation ThirdClass

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
    NSLog(@"Received Notification in Third Class From:%@", [[notification userInfo] objectForKey:@"name"]);
}

@end
