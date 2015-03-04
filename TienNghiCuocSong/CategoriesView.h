//
//  CategoriesView.h
//  TienNghiCuocSong
//
//  Created by ThanhPham on 2/8/15.
//  Copyright (c) 2015 ThanhPham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoriesView : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tbCategories;

@property (strong, nonatomic) NSArray *categories;

- (void)loadPage:(int)pageId;
@end
