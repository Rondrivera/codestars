//
//  MapKitViewController.m
//  TopCitiesApp
//
//  Created by Ronald Rivera on 10/17/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import "MapKitViewController.h"
#import "Annotation.h"
@interface MapKitViewController ()

@end
//Home coordinates
#define HOME_LATITUDE 40.798060;
#define HOME_LONGITUDE -73.962760;

//Metropolitan Museum of Art coordinates
#define MET_LATITUDE 40.779165;
#define MET_LONGITUDE -73.962928;

//Top of the Rock coordinates
#define TOPOFROCK_LATITUDE 40.758740;
#define TOPOFROCK_LONGITUDE -73.978674;

//9/11 Memorial coordinates
#define MEMORIAL_LATITUDE 40.711415;
#define MEMORIAL_LONGITUDE -74.012479;

//Highline coordinates
#define HIGHLINE_LATITUDE 40.739608;
#define HIGHLINE_LONGITUDE -74.008443;

//Empire State Building coordinates
#define EMPIRE_LATITUDE 40.748384;
#define EMPIRE_LONGITUDE -73.985479;

//Span
#define THE_SPAN 0.10f;

@implementation MapKitViewController
@synthesize _mapView = __mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Do any additional setup after loading the view, typically from a nib.
    //    self.mapView = [[MKMapView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width,self.view.bounds.size.height)];
    //    [self.mapView setShowsUserLocation:YES];
    //    [self.mapView setDelegate:self];
    //    [self.view addSubview:self.mapView];
    
    //Create the region
    MKCoordinateRegion myRegion;
    
    //Center
    CLLocationCoordinate2D center;
    center.latitude = EMPIRE_LATITUDE;
    center.longitude = EMPIRE_LONGITUDE;
    
    //Span
    MKCoordinateSpan span;
    span.latitudeDelta = THE_SPAN;
    span.longitudeDelta = THE_SPAN;
    
    myRegion.center = center;
    myRegion.span = span;
    
    //Set our mapView
    [__mapView setRegion:myRegion animated:YES];
    
    //Annotation
    NSMutableArray * locations = [[NSMutableArray alloc]init];
    CLLocationCoordinate2D location;
    Annotation *myAnn;
    
    //Met annotation
    myAnn = [[Annotation alloc] init];
    location.latitude = MET_LATITUDE;
    location.longitude = MET_LONGITUDE;
    myAnn.coordinate = location;
    myAnn.title = @"Metropolitan Museum of Art";
    myAnn.subtitle = @"Top Museum";
    [locations addObject:myAnn];
    
    //Top of the Rock annotation
    myAnn = [[Annotation alloc] init];
    location.latitude = TOPOFROCK_LATITUDE;
    location.longitude = TOPOFROCK_LONGITUDE;
    myAnn.coordinate = location;
    myAnn.title = @"Top of the Rock";
    myAnn.subtitle = @"Top View";
    [locations addObject:myAnn];
    
    //Memorial annotation
    myAnn = [[Annotation alloc] init];
    location.latitude = MEMORIAL_LATITUDE;
    location.longitude = MEMORIAL_LONGITUDE;
    myAnn.coordinate = location;
    myAnn.title = @"9/11 memorial";
    myAnn.subtitle = @"Top Memorial";
    [locations addObject:myAnn];
    
    //HighLine annotation
    myAnn = [[Annotation alloc] init];
    location.latitude = HIGHLINE_LATITUDE;
    location.longitude = HIGHLINE_LONGITUDE;
    myAnn.coordinate = location;
    myAnn.title = @"Highline";
    myAnn.subtitle = @"Top Park";
    [locations addObject:myAnn];
    
    //Empire State building annotation
    myAnn = [[Annotation alloc] init];
    location.latitude = EMPIRE_LATITUDE;
    location.longitude = EMPIRE_LONGITUDE;
    myAnn.coordinate = location;
    myAnn.title = @"Empire State Building";
    myAnn.subtitle = @"Top Site";
    [locations addObject:myAnn];
    
    //1. Create a coordinate for use with the annotation
    CLLocationCoordinate2D homeLocation;
    homeLocation.latitude = HOME_LATITUDE;
    homeLocation.longitude = HOME_LONGITUDE;
    
    Annotation * myAnnotation = [Annotation alloc];
    myAnnotation.coordinate = homeLocation;
    myAnnotation.title = @"Home";
    myAnnotation.subtitle = @"Ron's pad";
    
    [self._mapView addAnnotation:myAnnotation];
    [self._mapView addAnnotations:locations];
    
    //    CLLocationCoordinate2D metLocation;
    //    metLocation.latitude = MET_LATITUDE;
    //    metLocation.longitude = MET_LONGITUDE;
    //
    //    Annotation * myAnnotation1 = [Annotation alloc];
    //    myAnnotation.coordinate = metLocation;
    //    myAnnotation.title = @"Metropolitan Museum of Art";
    //    myAnnotation.subtitle = @"Top Museum";
    //
    //    [self.mapView addAnnotation:myAnnotation];
    
}

#pragma mark - MKMapViewDelegate Methods

//-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
//    [self.mapView setRegion:MKCoordinateRegionMake(userLocation.coordinate, MKCoordinateSpanMake(0.1f, 0.1f)) animated:YES];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)setMap:(id)sender {
    switch (((UISegmentedControl *)sender).selectedSegmentIndex) {
        case 0:
            __mapView.mapType =MKMapTypeStandard;
            break;
        case 1:
            __mapView.mapType =MKMapTypeSatellite;
            break;
        case 2:
            __mapView.mapType =MKMapTypeHybrid;
            break;
        default:
            break;
    }
}
@end
