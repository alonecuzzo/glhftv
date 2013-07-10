//
//  GLCustomFormatter.m
//  GLHFTV
//
//  Created by Jabari Bell on 7/9/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

#import "GLCustomFormatter.h"

@implementation GLCustomFormatter

-(NSString*)formatLogMessage:(DDLogMessage *)logMessage
{
    NSString *logLevel;
    switch (logMessage->logFlag) {
            
        case LOG_FLAG_ERROR:
            logLevel = @"E";
            break;
            
        case LOG_FLAG_WARN:
            logLevel = @"W";
            break;
            
        case LOG_FLAG_INFO:
            logLevel = @"I";
            break;
            
        case LOG_FLAG_VERBOSE:
            logLevel = @"V";
            break;
            
        default:
            break;
    }
    return [NSString stringWithFormat:@"%@::%@\n", logLevel, logMessage->logMsg];
}

@end
