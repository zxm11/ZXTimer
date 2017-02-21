//
//  ZXTimer.h
//  ZXTimer
//
//  Created by Richle  on 2017/2/21.
//  Copyright © 2017年 zxm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZXTimer : NSObject

@property  NSTimeInterval ti;
@property (nullable,weak) id atarget;
@property (nullable,nonatomic, assign) SEL aSelector;
@property (nullable, retain) id userInfo;


+ (nullable ZXTimer *)scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(nullable id)aTarget selector:(nullable SEL)aSelector userInfo:(nullable id)userInfo repeats:(BOOL)yesOrNo;



- (void)reStart;
- (void)stop;
- (void)invalidate;

@end
