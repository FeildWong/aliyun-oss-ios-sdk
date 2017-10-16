//
//  OSSLog.m
//  oss_ios_sdk
//
//  Created by zhouzhuo on 8/16/15.
//  Copyright (c) 2015 aliyun.com. All rights reserved.
//

#import "OSSLog.h"

@implementation OSSLog
+ (void)enableLog {
    isEnable = YES;
    [OSSDDLog removeAllLoggers];
    [OSSDDLog addLogger:[DDASLLogger sharedInstance]];
    [OSSDDLog addLogger:[OSSTTYLogger sharedInstance]];
    DDFileLogger *fileLogger = [[DDFileLogger alloc] init];
    [OSSDDLog addLogger:fileLogger];
}

+ (void)disableLog {
    isEnable = NO;
}

+ (BOOL)isLogEnable {
    return isEnable;
}
@end
