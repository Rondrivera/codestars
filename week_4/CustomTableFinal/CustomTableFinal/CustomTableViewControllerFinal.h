//
//  CustomTableViewControllerFinal.h
//  CustomTableFinal
//
//  Created by Ronald Rivera on 8/25/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ParseUI/PFQueryTableViewController.h>
#import "Recipe.h"

@interface CustomTableViewController: UITableViewController

@property NSArray *recipeNames;
@property NSArray *recipeImages;
@property NSArray *prepTimes;

- (NSInteger)tableView;


@end
