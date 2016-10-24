//
//  LYTopScoreUserCell.m
//  ITSNS
//
//  Created by 一羞 on 16/8/23.
//  Copyright © 2016年 Apple. All rights reserved.
//
#import "UIImageView+WebCache.h"
#import "LYTopScoreUserCell.h"
#import "Utils.h"
@implementation LYTopScoreUserCell
-(void)awakeFromNib{
    self.scoreLabel.layer.cornerRadius = 4;
    self.scoreLabel.layer.masksToBounds = YES;
}
- (void)setUser:(BmobUser *)user{
    _user = user;
    self.nameLabel.text = [user objectForKey:@"nick"];
    self.scoreLabel.text = [[user objectForKey:@"Score"] stringValue];
    self.timeLabel.text = [Utils parseTimeWithTimeStap:user.createdAt.timeIntervalSince1970];
    
    
    
    
    [self.headIV sd_setImageWithURL:[NSURL URLWithString: [user objectForKey:@"headPath"]]];
    
    
}

@end
