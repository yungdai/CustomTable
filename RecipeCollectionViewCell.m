//
//  RecipeCollectionViewCell.m
//  CustomTable
//
//  Created by Yung Dai on 2015-04-22.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "RecipeCollectionViewCell.h"

@implementation RecipeCollectionViewCell

- (void)awakeFromNib
{
    
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.recipeImageView = [[UIImageView alloc] initWithFrame:self.bounds];
        [self addSubview:self.recipeImageView];
    }
    return self;
}

@end
