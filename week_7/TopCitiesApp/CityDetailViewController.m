//
//  CityDetailViewController.m
//  TopCitiesApp
//
//  Created by Ronald Rivera on 10/20/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import "CityDetailViewController.h"
#import "CItyCollectionViewController.h"

@interface CityDetailViewController ()

@end

@implementation CityDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.cityImageView.image = [UIImage imageNamed:self.cityImages];
    self.cityNameLabel.text = self.citynames;
    self.descriptionLabel.text = self.descriptions;
}
- (IBAction)close:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
