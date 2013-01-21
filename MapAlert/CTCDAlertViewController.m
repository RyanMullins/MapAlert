//
//  CTCDAlertViewController.m
//  MapAlert
//
//  Created by Ryan Mullins on 1/21/13.
//  Copyright (c) 2013 com.cartocadabra.mobile. All rights reserved.
//

#import "CTCDAlertViewController.h"
#import <CoreLocation/CoreLocation.h>

#define MAP_ID @"jscarto.map-e9xhh3x6"
#define MAP_ID_RETINA @"jscarto.map-y2bf5hv3"
#define ZOOM_LEVEL_DEFAULT 15
#define ZOOM_LEVEL_MAX 16
#define ZOOM_LEVEL_MIN 14

@interface CTCDAlertViewController () <CLLocationManagerDelegate>

@property (nonatomic, strong) CLLocationManager * locationManager;

@end

@implementation CTCDAlertViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    
    RMMapBoxSource * tileSource = [[RMMapBoxSource alloc] initWithMapID:(([[UIScreen mainScreen] scale] > 1.0) ? MAP_ID_RETINA : MAP_ID)];
    RMMapView * initMapView = [[RMMapView alloc] initWithFrame:[[self view] bounds] andTilesource:tileSource];
    [initMapView setZoom:ZOOM_LEVEL_DEFAULT];
    [initMapView setMaxZoom:ZOOM_LEVEL_MAX];
    [initMapView setMinZoom:ZOOM_LEVEL_MIN];
    [initMapView setCenterCoordinate:CLLocationCoordinate2DMake(40.664167, -73.938611)];
    [initMapView setAutoresizingMask:UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth];
    
    [[self view] addSubview:initMapView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma Location Manager Delegate



@end
