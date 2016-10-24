//
//  TRCommentCell.h
//  ITSNS
//
//  Created by 一羞 on 16/8/23.
//  Copyright © 2016年 Apple. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "TRComment.h"
#import "TRCommentView.h"
@interface TRCommentCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *headIV;
@property (weak, nonatomic) IBOutlet UIButton *audioBtn;
@property (nonatomic, strong)TRComment *comment;

@property (nonatomic, strong)TRCommentView *commentView;
- (IBAction)playAction:(id)sender;

@end
