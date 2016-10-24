//
//  TRCommentView.h
//  ITSNS
//
//  Created by 一羞 on 16/8/23.
//  Copyright © 2016年 Apple. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "TRComment.h"
#import "YYTextView.h"
#import "TRImagesView.h"
@interface TRCommentView : UIView
@property (nonatomic, strong)YYTextView *commentTV;

@property (nonatomic, strong)TRComment *comment;
@property (nonatomic, strong)TRImagesView *imagesView;
@end
