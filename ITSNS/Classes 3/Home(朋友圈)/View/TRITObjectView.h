//
//  TRITObjectView.h
//  ITSNS
//
//  Created by 一羞 on 16/8/23.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YYTextView.h"
#import "TRITObject.h"
#import "TRImagesView.h"
@interface TRITObjectView : UIView

@property (nonatomic, strong)YYTextView *titleTV;
@property (nonatomic, strong)YYTextView *detailTV;
@property (nonatomic, strong)TRITObject *itObj;
@property (nonatomic, strong)TRImagesView *imagesView;
@end
