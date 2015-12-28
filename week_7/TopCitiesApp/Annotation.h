//
//  Annotation.h
//  TopCitiesApp
//
//  Created by Ronald Rivera on 10/20/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Annotation : NSObject <MKAnnotation>

@property (nonatomic, assign)CLLocationCoordinate2D coordinate;
@property (nonatomic, copy) NSString * title;
@property (nonatomic, copy) NSString * subtitle;

@end
