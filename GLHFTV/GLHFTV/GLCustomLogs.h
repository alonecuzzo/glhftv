#import "DDLog.h"
//
//  GLCustomLogs.h
//  GLHFTV
//
//  Created by Jabari Bell on 7/10/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

//debug levesl 1-3 are already reserved

#define LOG_FLAG_VIDEO     (1 << 4) //0...00100000

#define LOG_VIDEO (ddLogLevel & LOG_FLAG_VIDEO)

#define DDLogVideo(frmt, ...) ASYNC_LOG_OBJC_MAYBE(ddLogLevel, LOG_FLAG_VIDEO, 0, frmt, ##__VA_ARGS__)

#define LOG_FLAG_VIDEOS (LOG_FLAG_VIDEO)