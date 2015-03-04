//
//  MainNavigationView.m
//  TienNghiCuocSong
//
//  Created by ThanhPham on 2/8/15.
//  Copyright (c) 2015 ThanhPham. All rights reserved.
//

#import "MainNavigationView.h"
#import "HeaderView.h"
#import "CategoriesView.h"
#import "PulldownMenu.h"
#import "Utils.h"

@interface MainNavigationView () <PulldownMenuDelegate>

@property (nonatomic, retain) PulldownMenu *menuShow;

@end



@implementation MainNavigationView

@synthesize headerView, contentPage;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
  
}

- (void)initMenu {
    
    CGRect menuFrame;
    menuFrame = CGRectMake(0, 70, [Utils screenSize].width, 300);
    
        UIView *menuView = [[UIView alloc] initWithFrame:menuFrame];
        [self.view addSubview: menuView];
    
    _menuShow = [[PulldownMenu alloc] initWithView:menuView];
    [self.view addSubview:_menuShow];
    _menuShow.delegate = self;
    
    [_menuShow insertButton:@"Nhà Hàng - Coffee"];
    [_menuShow insertButton:@"Ôtô - Xe máy"];
    [_menuShow insertButton:@"Hàng Tiêu dùng"];
    [_menuShow insertButton:@"Du Lịch - Khách Sạn"];
    [_menuShow insertButton:@"Thể Dục - Thể Thao"];
    [_menuShow insertButton:@"Sức Khoẻ - Spa"];
    [_menuShow insertButton:@"Thời Trang - Mỹ Phẩm"];
    [_menuShow insertButton:@"Giáo Dục - Đào Tạo"];
    [_menuShow insertButton:@"Bản Đồ"];
    [_menuShow insertButton:@"Giới Thiệu"];
    [_menuShow insertButton:@"Liên Hệ"];
    
    
    
//    [_menuShow loadMenu];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


#pragma mark - FUNCTION 

- (void)finishLoadSplash {
    
    [self initHeaderBar];
    [self initHomePage];
}

- (void)initHeaderBar {
    if (headerView.superclass) {
        [headerView removeFromSuperview];
        headerView = nil;
    }
    
    headerView = [HeaderView create];
    [self.view addSubview:headerView];
}

- (void)initHomePage {
    
    headerView.lbTitle.text = @"Category";
    contentPage = [[CategoriesView alloc] init];
    headerView.hidden = NO;
    
    [self popToRootViewControllerAnimated:NO];
    [self pushViewController:contentPage animated:YES];
}

- (void)showMenu {
    
    [_menuShow animateDropDown];

}

#pragma mark - Menu Delegate
-(void)menuItemSelected:(NSIndexPath *)indexPath
{
//    NSLog(@"%d",indexPath.item);
    [_menuShow animateDropDown];
}

-(void)pullDownAnimated:(BOOL)open
{
    if (open)
    {
        NSLog(@"Pull down menu open!");
    }
    else
    {
        NSLog(@"Pull down menu closed!");
    }
}

@end
