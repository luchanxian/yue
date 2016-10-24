//
//  TRVoiceView.h
//  ITSNS
//
//  Created by 一羞 on 16/8/23.
//  Copyright © 2016年 Apple. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface TRVoiceView : UIView
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

-(void)beginAnimation;

-(void)changeLocation:(BOOL)isSelf;
@end
