//
//  MapKitViewController.h
//  TopCitiesApp
//
//  Created by Ronald Rivera on 10/17/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapKitViewController : UIViewController <MKMapViewDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *_mapView;
- (IBAction)setMap:(id)sender;

//@property (weak, nonatomic) NSString *_mapview;
@end
