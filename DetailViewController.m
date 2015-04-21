//
//  DetailViewController.m
//  CustomTable
//
//  Created by Yung Dai on 2015-04-20.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "DetailViewController.h"
#import "CustomTableViewCell.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Set the Label text with the selected recipe
    self.title= self.recipe.name;
    self.prepTimeLabel.text  = self.recipe.prepTime;
    self.recipeImageView.image = [UIImage imageNamed:self.recipe.image];
    
    // setting self.ingredientsTableView.delegate to the DetailViewController
    self.ingredientsTableView.delegate = self;
    self.ingredientsTableView.dataSource = self;
    self.ingredientsTableView.separatorStyle = UITableViewCellSeparatorStyleNone;

    
}


// two required methods for the UITableViewDataSource protocol
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.recipe.ingredients count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"IngredientList";
    UITableViewCell *cell = (UITableViewCell *) [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    cell.textLabel.text = self.recipe.ingredients[indexPath.row];
    
    return cell;
}

@end
