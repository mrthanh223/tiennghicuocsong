//
//  customCategoryCell.m
//  TienNghiCuocSong
//
//  Created by ThanhPham on 2/8/15.
//  Copyright (c) 2015 ThanhPham. All rights reserved.
//

#import "CustomCategoryCell.h"
#import "Categories.h"

@implementation CustomCategoryCell

- (void)awakeFromNib {
    // Initialization code
 
        // border radius
        [self.contView.layer setCornerRadius:3.0f];
        
        // drop shadow
        [self.contView.layer setShadowColor:[UIColor blackColor].CGColor];
        [self.contView.layer setShadowOpacity:0.8];
        [self.contView.layer setShadowRadius:3.0];
        [self.contView.layer setShadowOffset:CGSizeMake(2.0, 2.0)];
        
        self.backgroundColor = [UIColor whiteColor];

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)mapData:(Categories *)category {
    
    self.lbContent.text = category.title;
    self.imgAvatar.image = [UIImage imageNamed:category.image];
    
}


@end
