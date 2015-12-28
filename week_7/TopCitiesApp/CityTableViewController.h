//
//  CityTableViewController.h
//  TopCitiesApp
//
//  Created by Ronald Rivera on 9/30/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface CityTableViewController : UITableViewController <UISearchResultsUpdating>

@property (nonatomic, strong)NSArray *cities;
@property (nonatomic, strong)NSArray *searchResults;
@property (nonatomic, strong)UISearchController *searchController;


@end
