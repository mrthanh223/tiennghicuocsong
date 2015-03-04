//
//  Utils.h
//  TienNghiCuocSong
//
//  Created by ThanhPham on 2/8/15.
//  Copyright (c) 2015 ThanhPham. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>

#define  kApplicationDelegate (AppDelegate *)[UIApplication shareApplication].delegate

@interface Utils : NSObject

+ (CGSize)screenSize;
+ (void)initDefault;
@end
