//
//  HeaderView.h
//  TienNghiCuocSong
//
//  Created by ThanhPham on 2/8/15.
//  Copyright (c) 2015 ThanhPham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PulldownMenu.h"


@interface HeaderView : UIView <PulldownMenuDelegate>


@property (weak, nonatomic) IBOutlet HeaderView *btnMenu;
@property (weak, nonatomic) IBOutlet UILabel *lbTitle;
@property (retain, nonatomic) PulldownMenu *menu;


+ (HeaderView *)create;
- (IBAction)btnMenu:(id)sender;

@end
