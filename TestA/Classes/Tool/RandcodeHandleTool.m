//
//  RandcodeHandleTool.m
//  Xitu
//
//  Created by DragonLi on 2017/8/4.
//  Copyright © 2017年 XiTu Inc. All rights reserved.
//

#import "RandcodeHandleTool.h"
#import <JJBasicGeneric/XTGlobalFormatting-Objc.h>
#import <JJBasicGeneric/XituGlobalConst.h>

@implementation RandcodeHandleTool

+(void)enterRandcodeTip{
    dispatch_async(dispatch_get_main_queue(), ^{
//        [[ZEHud sharedInstance] hideHud];
//        [[ZEHud sharedInstance] showError:REGISTER_RIGHT_RANDCODE];
    });
}

+(void)errorRandcodeTip{
    dispatch_async(dispatch_get_main_queue(), ^{
//        [[ZEHud sharedInstance] hideHud];
//        [[ZEHud sharedInstance] showError:REGISTER_ERROR_RANDCODE];
    });
}

+ (BOOL)isRandcode:(NSString *)randcode{
    BOOL isRandcode;
    if ([self isRandcodelessFour:randcode] ) {
        isRandcode = NO;
    }else if (randcode.length >0){
       isRandcode = YES;
    }else{
        isRandcode = NO;
    }
    return isRandcode;
}

+ (BOOL)isRandcodelessFour:(NSString *)randcode{
    BOOL isRandcodelessFour= NO;
    if (kStringIsEmpty(randcode)) {
        isRandcodelessFour = YES;
    }
    return isRandcodelessFour;
}

@end
