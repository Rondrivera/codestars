//
//  CityViewController.h
//  TopCitiesApp
//
//  Created by Ronald Rivera on 9/27/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CityViewController : UIViewController
@property (weak, nonatomic)IBOutlet UIImageView *cityImageView;
- (IBAction)close:(id)sender;

@property (weak, nonatomic) NSString *cityImageView;
@end
