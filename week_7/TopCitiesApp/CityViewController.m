//
//  CityViewController.m
//  TopCitiesApp
//
//  Created by Ronald Rivera on 9/27/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import "CityViewController.h"

@interface CityViewController ()

@end

@implementation CityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cityImageView.image = [UIImage imageNamed:self.cityImageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showCityPhoto"]) {
//        NSArray *indexPaths =  [self.collectionView indexPathsForSelectedItems];
        UINavigationController *destViewController = segue.destinationViewController;
        CityViewController *cityViewController = (CityViewController *) [destViewController.childViewControllers firstObject];
//      NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
//    cityViewController.cityImageView = [cityImages[indexPath.section]objectAtIndex:indexPath.row];
//  [self.collectionView deselectItemAtIndexPath:indexPath animated: NO];
    }
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.


@end
