//
//  TRMyItem.m
//  ITSNS
//
//  Created by 一羞 on 16/8/23.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "TRMyItem.h"

@implementation TRMyItem
-(void)awakeFromNib{
    
    self.unReadCountLabel.layer.cornerRadius = self.unReadCountLabel.width/2;
    self.unReadCountLabel.layer.masksToBounds = YES;
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(unreadAction:) name:@"UnReadNotification" object:nil];
}
-(void)unreadAction:(NSNotification *)noti{
    
    int count = [noti.object intValue];
    
    if (count>0) {
        self.unReadCountLabel.hidden = NO;
        self.unReadCountLabel.text =  @(count).stringValue;
    }else{
        
        self.unReadCountLabel.hidden = YES;
    }
    
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
