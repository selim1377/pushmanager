//
//  PushManager.h
//  PushManager
//
//  Created by Selim on 03.02.14.
//  Copyright (c) 2014 Concept Factory. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PushManager : NSObject

+(void)registerForNotifications;
+(void)unRegisterForNotifications;
+(void)handleNotification:(NSDictionary *)userInfo;
+(NSString *)convertDataToString:(NSData *)tokenData;

@end
