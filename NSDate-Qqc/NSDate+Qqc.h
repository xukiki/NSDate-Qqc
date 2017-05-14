//
//  NSDate+Qqc.h
//  QqcFramework
//
//  Created by mahailin on 15/8/7.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  NSDate类别
 */
@interface NSDate (Qqc)

/**
 *  将日期格式转化为NSString
 *
 *  @param format 格式（如"yyyy/MM/dd HH:mm:ss"）
 *
 *  @return 转化后的字符串
 */
- (NSString *)convertToStringWithFormat:(NSString *)format;

/**
 *  忽略时间，判断日期是否相等
 *
 *  @param date 日期
 *
 *  @return 是-yes，否-no
 */
- (BOOL)isEqualToDateIgnoringTime:(NSDate *)date;

@end
