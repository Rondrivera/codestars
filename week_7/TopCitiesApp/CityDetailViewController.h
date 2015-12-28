//
//  CityDetailViewController.h
//  TopCitiesApp
//
//  Created by Ronald Rivera on 10/20/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CityDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *cityImageView;
@property (weak, nonatomic) IBOutlet UILabel *cityNameLabel;
@property (weak, nonatomic) IBOutlet UITextView *descriptionLabel;

- (IBAction)close:(id)sender;

@property (weak, nonatomic) NSString *cityImages;
@property (weak, nonatomic) NSString *cityImageName;
@property (weak, nonatomic) NSString *citynames;
@property (weak, nonatomic) NSString *descriptions;

@end
