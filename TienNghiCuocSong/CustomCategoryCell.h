//
//  customCategoryCell.h
//  TienNghiCuocSong
//
//  Created by ThanhPham on 2/8/15.
//  Copyright (c) 2015 ThanhPham. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Categories;
@interface CustomCategoryCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *contView;
@property (weak, nonatomic) IBOutlet UIImageView *imgAvatar;
@property (weak, nonatomic) IBOutlet UILabel *lbContent;


- (void)mapData:(Categories *)category;
@end
