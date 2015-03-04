//
//  Utils.m
//  TienNghiCuocSong
//
//  Created by ThanhPham on 2/8/15.
//  Copyright (c) 2015 ThanhPham. All rights reserved.
//

#import "Utils.h"

static CGSize sScreenSize;

@implementation Utils

+ (CGSize)screenSize {
    
  return sScreenSize;
}

+ (void)initDefault {
    
    sScreenSize = [UIScreen mainScreen].bounds.size;

}



@end
