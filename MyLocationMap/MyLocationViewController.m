//
//  MyLocationViewController.m
//  MyLocationMap
//
//  Created by vignesh on 9/8/16.
//  Copyright © 2016 vignesh. All rights reserved.
//

#import "MyLocationViewController.h"
#import "MapAnnotation.h"
@interface MyLocationViewController ()

@end

@implementation MyLocationViewController
@synthesize mapView;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    mapView = [[MKMapView alloc]initWithFrame:
               CGRectMake(01, 01, 800, 800)];
    mapView.delegate = self;
    mapView.centerCoordinate = CLLocationCoordinate2DMake(12.95, 80.16);
    mapView.mapType = MKMapTypeHybrid;
    CLLocationCoordinate2D location;
    location.latitude = (double) 12.952323;
    location.longitude = (double) 80.166609;
    // Add the annotation to our map view12.952323,80.166609
    MapAnnotation *newAnnotation = [[MapAnnotation alloc]
                                    initWithTitle:@"Solvedge" andCoordinate:location];
    [mapView addAnnotation:newAnnotation];
    [self.view addSubview:mapView];



}
- (void)mapView:(MKMapView *)mv didAddAnnotationViews:(NSArray *)views
{
    MKAnnotationView *annotationView = [views objectAtIndex:0];
    id <MKAnnotation> mp = [annotationView annotation];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance
    ([mp coordinate], 1500, 1500);
    [mv setRegion:region animated:YES];
    [mv selectAnnotation:mp animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
