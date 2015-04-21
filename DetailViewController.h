//
//  DetailViewController.h
//  CustomTable
//
//  Created by Yung Dai on 2015-04-20.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Recipe.h"


// implimenting the UITablViewDataSource and UITableViewDelegate protocols into DetailsViewController
@interface DetailViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>


@property (strong, nonatomic) IBOutlet UIImageView *recipeImageView;
@property (strong, nonatomic) IBOutlet UILabel *prepTimeLabel;
@property (strong, nonatomic) IBOutlet UITableView *ingredientsTableView;

@property (strong, nonatomic) Recipe *recipe;

@end
