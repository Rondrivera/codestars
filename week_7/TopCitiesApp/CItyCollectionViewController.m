//
//  CityCollectionViewController.m
//  TopCitiesApp
//
//  Created by Ronald Rivera on 9/23/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import "CityCollectionViewController.h"
#import "CityCollectionHeaderView.h"
#import "CityDetailViewController.h"

@interface CityCollectionViewController ()

@end

@implementation CityCollectionViewController {
    NSArray *cityImages;
    NSArray *cityNames;
    NSArray *populations;
    NSArray *descriptions;
}
static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    cityImages = @[@"austin.jpg", @"chicago.jpg", @"denver.jpg", @"miami.jpg", @"newyorkcity.jpg",@"orlando.jpg", @"portland.jpg", @"sandiego.jpg", @"sanfran.jpg", @"seattle.jpg"];
//    cityNames = @[@"Austin",@"Chicago",@"Denver",@"Miami",@"New York City"@"Orlando",@"Portland",@"San Diego",@"San Francisco",@"Seattle"];
//    populations = @[@"885,000",@"2,719,000",@"650,000",@"418,000",@"9,000,000",@"256,000",@"650,000",@"1,356,000",@"838,000",@"653,000"];
//    descriptions = @[@"",@"",@"",@"",@"",@"",@"",@"",@"",@""];
}
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
   // [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"showCityPhoto"]) {
        
        NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
        
        UINavigationController *destViewController = segue.destinationViewController;
        CityDetailViewController *cityDetailViewController = (CityDetailViewController *)
        [destViewController.childViewControllers firstObject];
        NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
        
        cityDetailViewController.cityImageName = [cityImages objectAtIndex:indexPath.row];
        cityDetailViewController.cityNameLabel = [cityNames objectAtIndex:indexPath.row];
        cityDetailViewController.descriptionLabel = [descriptions objectAtIndex:indexPath.row];
        
        [self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return cityImages.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CityCollectionViewCell *cell = (CityCollectionViewCell*)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    cell.cityImageView.image = [UIImage imageNamed:[cityImages objectAtIndex:indexPath.row]];
    
    return cell;
}

//- (UICollectionReusableView*)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
//    
//    UICollectionReusableView *reusableView = nil;
//    
//    if (kind == UICollectionElementKindSectionHeader) {
//    CityCollectionHeaderView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView"forIndexPath:indexPath];
//        NSString *title = [[NSString alloc]initWithFormat:@"City Group #%ld",indexPath.section + 1];
////        headerView.titleLabel.text = title;
//    
//        reusableView = headerView;
//}
//    if (kind == UICollectionElementKindSectionFooter) {
//        UICollectionReusableView*footerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"FooterView" forIndexPath:indexPath];
//        reusableView = footerView;
//    }
//    return reusableView;
//}
#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
