//
//  RandcodeHandleTool.h
//  Xitu
//
//  Created by DragonLi on 2017/8/4.
//  Copyright © 2017年 XiTu Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RandcodeHandleTool : NSObject

/**
 *
 *  校验用户输入验证码 + 输入错误提示
 *
 */
+ (BOOL)isRandcode:(NSString *)randcode;

/**
 * 请填写正确的图形验证码
 *
 */
+(void)enterRandcodeTip;

/**
 *
 * 图形验证错误，请点击刷新重试
 */
+(void)errorRandcodeTip;

/**
  * 校验用户输入是否符合图形验证码
  *
 */
+ (BOOL)isRandcodelessFour:(NSString *)randcode;

@end
