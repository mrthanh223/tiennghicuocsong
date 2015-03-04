//
//  MainNavigationView.h
//  TienNghiCuocSong
//
//  Created by ThanhPham on 2/8/15.
//  Copyright (c) 2015 ThanhPham. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HeaderView.h"
#import "CategoriesView.h"


@class SplashController;

@interface MainNavigationView : UINavigationController

//Declare

@property (strong, nonatomic) HeaderView *headerView;
@property (strong, nonatomic) CategoriesView *contentPage;
@property (weak, nonatomic) SplashController *splashViewController;

//Function

- (void)finishLoadSplash;
- (void)initHeaderBar;
- (void)initHomePage;
- (void)showMenu;


@end
