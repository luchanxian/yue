//
//  Utils.h
//  YYText练习
//
//  Created by 一羞 on 16/8/23.
//  Copyright © 2016年 Apple. All rights reserved.
//
#import "TRITObject.h"
#import <Foundation/Foundation.h>
#import "YYTextView.h"
#import <AVFoundation/AVFoundation.h>
static AVAudioPlayer *player;
@interface Utils : NSObject


+(NSString *)parseTimeWithTimeStap:(float)timestap;


+(void)faceMappingWithText:(YYTextView *)tv;

+(void)playVoiceWithPath:(NSString *)path;

+(void)addScore:(int)score;

+(void)addUnreadWithSource:(TRITObject *)itObj;
@end
