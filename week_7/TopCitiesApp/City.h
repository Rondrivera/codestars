//
//  City.h
//  TopCitiesApp
//
//  Created by Ronald Rivera on 9/23/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic, weak)NSString *name;
@property (nonatomic, weak)NSString *population;
@property (nonatomic, weak)NSString *image;
@property (nonatomic, weak)NSArray *pointsOfInterest;


@end
