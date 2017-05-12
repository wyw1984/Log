//
//  Log.h
//  Log
//
//  Created by yanwu wei on 2017/5/12.
//  Copyright © 2017年 Ivan. All rights reserved.
//

#ifndef Log_h
#define Log_h

#define LOG_FUNC_MACRO(fnct, frmt, ...)     \
[Log doLog : __FILE__                       \
function : fnct                             \
line : __LINE__                             \
format : (frmt), ## __VA_ARGS__]


#define Log(frmt, ...)   LOG_FUNC_MACRO(__PRETTY_FUNCTION__, frmt, ##__VA_ARGS__)

#endif

#import <Foundation/Foundation.h>

@interface Log : NSObject

+ (void)doLog:(const char *)file
     function:(const char *)function
         line:(NSUInteger)line
       format:(NSString *)format, ...;

@end
