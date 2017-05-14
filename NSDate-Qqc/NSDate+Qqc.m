//
//  NSDate+Qqc.m
//  QqcFramework
//
//  Created by mahailin on 15/8/7.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import "NSDate+Qqc.h"

#define DATE_COMPONENTS (NSYearCalendarUnit| NSMonthCalendarUnit | NSDayCalendarUnit | NSWeekCalendarUnit |  NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit | NSWeekdayCalendarUnit | NSWeekdayOrdinalCalendarUnit)
#define CURRENT_CALENDAR [NSCalendar currentCalendar]

@implementation NSDate (Qqc)

/**
 *  将日期格式转化为NSString
 *
 *  @param format 格式（如"yyyy/MM/dd HH:mm:ss"）
 *
 *  @return 转化后的字符串
 */
- (NSString *)convertToStringWithFormat:(NSString *)format
{
    NSDateFormatter *formatter=[[NSDateFormatter alloc] init];
    [formatter setDateFormat:format];
    NSString *dateTime = [formatter stringFromDate:self];
    return dateTime;
}

/**
 *  忽略时间，判断日期是否相等
 *
 *  @param date 日期
 *
 *  @return 是-yes，否-no
 */
- (BOOL)isEqualToDateIgnoringTime:(NSDate *)date
{
    NSDateComponents *components1 = [CURRENT_CALENDAR components:DATE_COMPONENTS fromDate:self];
    NSDateComponents *components2 = [CURRENT_CALENDAR components:DATE_COMPONENTS fromDate:date];
    
    return (([components1 year] == [components2 year])
            && ([components1 month] == [components2 month])
             &&([components1 day] == [components2 day]));
}

@end
