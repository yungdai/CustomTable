//
//  Recipe.h
//  CustomTable
//
//  Created by Yung Dai on 2015-04-20.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *prepTime;
@property (strong, nonatomic) NSString *image;
@property (strong, nonatomic) NSArray *ingredients;


@end
