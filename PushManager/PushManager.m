//
//  PushManager.m
//  PushManager
//
//  Created by Selim on 03.02.14.
//  Copyright (c) 2014 Concept Factory. All rights reserved.
//

#import "PushManager.h"

@implementation PushManager

+(void)registerForNotifications
{
	[[UIApplication sharedApplication] registerForRemoteNotificationTypes:(UIRemoteNotificationTypeAlert | UIRemoteNotificationTypeBadge |UIRemoteNotificationTypeSound)];
    
    [[UIApplication sharedApplication] setApplicationIconBadgeNumber:0];
}

+(void)unRegisterForNotifications
{
    [[UIApplication sharedApplication] unregisterForRemoteNotifications];
}

+(void)handleNotification:(NSDictionary *)userInfo
{
    [[UIApplication sharedApplication] setApplicationIconBadgeNumber:0];
}

+(NSString *)convertDataToString:(NSData *)tokenData
{
    NSString *dt = [[tokenData description] stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"&lt;&gt;"]];
	dt = [dt stringByReplacingOccurrencesOfString:@" " withString:@""];
	dt = [dt stringByReplacingOccurrencesOfString:@"<" withString:@""];
	dt = [dt stringByReplacingOccurrencesOfString:@">" withString:@""];
    
    return dt;
}



@end
