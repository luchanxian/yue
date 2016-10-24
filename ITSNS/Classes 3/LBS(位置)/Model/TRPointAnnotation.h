//
//  TRAnnotation.h
//  ITSNS
//
//  Created by 一羞 on 16/8/23.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <BaiduMapAPI_Map/BMKMapComponent.h>
#import "TRITObject.h"
@interface TRPointAnnotation : BMKPointAnnotation
@property (nonatomic, strong)TRITObject *userInfo;
@end
