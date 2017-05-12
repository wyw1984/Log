//
//  Log.m
//  Log
//
//  Created by yanwu wei on 2017/5/12.
//  Copyright © 2017年 Ivan. All rights reserved.
//

#import "Log.h"

@implementation Log

+ (void)doLog:(const char *)file
     function:(const char *)function
         line:(NSUInteger)line
       format:(NSString *)format, ...
{
#if DEBUG
    va_list args;
    
    if (format)
    {
        va_start(args, format);
        
        NSString *message = [[NSString alloc] initWithFormat:format arguments:args];
        
        NSString *info = [NSString stringWithFormat:@"\r    文件：%s \r    函数：%s \r    行数：%li\r", file,function,line];
        
        //去掉辅助信息
        //info = @"";
        
        //换行 如果不需要 注释即可
        message = [info stringByAppendingFormat:@"\r%@\r\r\r",message];
        
        va_end(args);
        
        va_start(args, format);
    
        
        NSLog(@"%@",message);
        
        va_end(args);
    }
#endif
    
    
}

@end
