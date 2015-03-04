//
//  SplashController.m
//  TienNghiCuocSong
//
//  Created by ThanhPham on 2/8/15.
//  Copyright (c) 2015 ThanhPham. All rights reserved.
//

#import "SplashController.h"

#define IMG_BY_SCREEN_HEIGHT(imgName) (([[UIScreen mainScreen] bounds].size.height == 568.0) ? [imgName stringByAppendingString:@"-568h"] : imgName)

@interface SplashController ()

@end

@implementation SplashController

@synthesize mainController;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    mainController = (MainNavigationView *)self.navigationController;
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:IMG_BY_SCREEN_HEIGHT(@"Default")]]];
 
    [mainController performSelector:@selector(finishLoadSplash) withObject:nil afterDelay:1.0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
