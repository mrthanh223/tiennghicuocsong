//
//  CategoriesView.m
//  TienNghiCuocSong
//
//  Created by ThanhPham on 2/8/15.
//  Copyright (c) 2015 ThanhPham. All rights reserved.
//

#import "CategoriesView.h"
#import "Utils.h"
#import "CustomCategoryCell.h"
#import "Categories.h"


@interface CategoriesView ()

@end

@implementation CategoriesView
- (void)loadView {
    [super loadView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    [self.tbCategories reloadData];
    
    self.view = [[[NSBundle mainBundle] loadNibNamed:@"CategoriesView" owner:self options:nil] lastObject];

//    //
//    CGSize tbSize = self.tbCategories.contentSize;
//    tbSize.height += 500;
//    self.tbCategories.contentSize = tbSize;
    [self createCategoryArray];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - TableView Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.categories.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 300;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString* cellIdentifier = @"CellIdentifier";
    CustomCategoryCell *cell = (CustomCategoryCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"CustomCategoryCell" owner:nil options:nil] lastObject];
    }
    
    Categories *categoryItem = self.categories[indexPath.row];

    [cell mapData:categoryItem];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"Selected at index : %d", indexPath.row);
    
}

- (void)createCategoryArray {
    NSMutableArray *listCategory = [NSMutableArray array];
   
    for (int i = 1; i < 100; i++) {
        Categories *item = [[Categories alloc] init];
        item.title = @"Cà phê sách là mô hình đã và đang phổ biến ở nhiều nước trên thế giới và cả ở các đô thị lớn của Việt Nam. Cà phê sách là loại hình đã đu­ợc ­ưa chuộng ở nhiều nước từ những thập kỷ trước, chiếm được cảm tình và sự đón nhận nồng nhiệt của công chúng, đặc biệt ở các nư­ớc phư­ơng Tây. Tại Mỹ, trên bất cứ đường phố nào cũng có quán cà phê sách. Ở Pháp, Italia,  Nhật, Trung Quốc cà phê sách cũng rất phổ biến, khách đến cà phê sách không đơn thuần là thưởng thức cà phê mà còn là để tận h­ưởng khoảng không gian yên bình riêng biệt.  Bên cạnh những quán cà phê chỉ đơn thuần là phục vụ đồ uống hoặc có kèm theo phục vụ ăn nhanh, giá đắt thì cà phê sách  thu hút hơn vì có giá phải chăng, lại được thưởng thức sách báo hoặc truy cập intenet miễn phí, không gian đẹp và yên tĩnh phù hợp với nhiều đối tượng. Cách bài trí của những quán cà phê sách tuy đơn giản nhưng khá hiện đại và bắt mắt.";
        item.image = @"Gia-re-tai-LA-DOLCE-VITA";
        
        
        if (item != nil)
            [listCategory addObject:item];
    }
    
    self.categories = listCategory;
//    [self.tbCategories reloadData];
}

#pragma mark - LoadPage
- (void)loadPage:(int)pageId {
    
}

@end
