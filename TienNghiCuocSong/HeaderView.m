//
//  HeaderView.m
//  TienNghiCuocSong
//
//  Created by ThanhPham on 2/8/15.
//  Copyright (c) 2015 ThanhPham. All rights reserved.
//

#import "HeaderView.h"
#import "Utils.h"
#import "AppDelegate.h"
#import "MainNavigationView.h"


#define HEIGHT_OF_HEADER_VIEW 120


@implementation HeaderView
@synthesize menu;

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

+ (HeaderView *)create {
    
    HeaderView *uiHeaderView = [[[NSBundle mainBundle] loadNibNamed:@"HeaderView" owner:self options:nil] lastObject];
    
    [uiHeaderView setFrame: CGRectMake(0, 0,[Utils screenSize].width, HEIGHT_OF_HEADER_VIEW)];
    uiHeaderView.hidden = YES;
    
    return uiHeaderView;
    
}


- (IBAction)btnMenu:(id)sender {

    NSLog(@"Show Menu");
    
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    [appDelegate.mainNav showMenu];
}



@end
