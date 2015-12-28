//
//  DetailViewController.h
//  TopCitiesApp
//
//  Created by Ronald Rivera on 9/22/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface DetailViewController : UIViewController

@property (nonatomic, weak)IBOutlet UILabel *populationLabel;
@property (nonatomic, weak)IBOutlet UILabel *citylabel;
@property (nonatomic, weak)IBOutlet UIImageView *USMap;
@property (nonatomic, weak)IBOutlet UIImage *cityImageView;
@property (nonatomic, weak)IBOutlet UITextView *pointsOfInterestTextView;



//@property (nonatomic, weak)NSString *population;
@property (nonatomic, weak)NSString *cities;
@property (nonatomic, weak)UIImage *image;

@end
