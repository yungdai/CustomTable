//
//  CustomTableViewController.m
//  CustomTable
//
//  Created by Yung Dai on 2015-04-14.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "CustomTableViewController.h"
#import "CustomTableViewCell.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController

{
    NSArray *recipeNames;
    NSArray *recipeImages;
    NSArray *prepTime;
    BOOL receipeChecked[16];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    recipeNames = @[@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini"];
    
    
    recipeImages = @[@"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg", @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme_brelee.jpg", @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg",@"instant_noodle_with_egg.jpg", @"noodle_with_bbq_pork.jpg", @"japanese_noodle_with_pork.jpg", @"green_tea.jpg", @"thai_shrimp_cake.jpg", @"angry_birds_cake.jpg", @"ham_and_cheese_panini.jpg"];
    
    prepTime = @[@"1 mins", @"2 mins", @"3 mins", @"4 mins", @"5 mins", @"6 mins", @"7 mins", @"8 mins", @"9 mins", @"10 mins", @"11 mins", @"13 mins", @"14 mins", @"15 mins", @"16 mins", @"17 mins"];
    

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [recipeNames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    CustomTableViewCell *cell = (CustomTableViewCell *) [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.nameLabel.text = [recipeNames objectAtIndex:indexPath.row];
    cell.prepTimeLable.text = [prepTime objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[recipeImages objectAtIndex:indexPath.row]];
    
    if (receipeChecked[indexPath.row]) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    //return the number of sections.
    return 1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString * selectedRecipe = [recipeNames objectAtIndex:indexPath.row];
    UIAlertView *messageAlert = [[UIAlertView alloc]initWithTitle:@"Row Selected" message:selectedRecipe delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    
    // display alert message
    [messageAlert show];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    // this code checks and unchecks when the item is selected.
    if (receipeChecked[indexPath.row]) {
        receipeChecked[indexPath.row] = NO;
        cell.accessoryType = UITableViewCellAccessoryNone;
    } else {
        receipeChecked[indexPath.row] = YES;
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
