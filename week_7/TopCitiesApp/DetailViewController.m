//
//  DetailViewController.m
//  TopCitiesApp
//
//  Created by Ronald Rivera on 9/22/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import "DetailViewController.h"
#import "City.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.citylabel.text = self.cities;
//    self.cityImageView.image = [UIImage imageNamed:self.citylabel.image];
    
    NSMutableString *pointsOfInterestText = [NSMutableString string];
//    for (NSString* pointsOfInterest in self.cities.pointsOfInterest) {
//        [pointsOfInterestText appendFormat:@"%@\n", pointsOfInterest];
//    }
    self.pointsOfInterestTextView.text = pointsOfInterestText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation



@end
