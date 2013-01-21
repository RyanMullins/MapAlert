//
//  CTCDAlertViewController.m
//  MapAlert
//
//  Created by Ryan Mullins on 1/21/13.
//  Copyright (c) 2013 com.cartocadabra.mobile. All rights reserved.
//

#import "CTCDAlertViewController.h"

#define MAP_ID @"jscarto.map-e9xhh3x6"
#define MAP_ID_RETINA @"jscarto.map-y2bf5hv3"
#define ZOOM_LEVEL_DEFAULT 15
#define ZOOM_LEVEL_MAX 16
#define ZOOM_LEVEL_MIN 8

@interface CTCDAlertViewController () <CLLocationManagerDelegate>

@end

@implementation CTCDAlertViewController
@synthesize mapView;
@synthesize alertButton;
@synthesize settingsButton;

- (void) viewDidLoad {
    [super viewDidLoad];
    [[self mapView] setUserTrackingMode:RMUserTrackingModeFollow animated:YES];
}

- (void) viewDidAppear:(BOOL)animated {
    [[self mapView] setTileSource:[[RMMapBoxSource alloc] initWithMapID:(([[UIScreen mainScreen] scale] > 1.0) ? MAP_ID_RETINA : MAP_ID)]];
    [[self mapView] setZoom:ZOOM_LEVEL_DEFAULT];
    [[self mapView] setMaxZoom:ZOOM_LEVEL_MAX];
    [[self mapView] setMinZoom:ZOOM_LEVEL_MIN];
    [[self mapView] setShowsUserLocation:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma MapBox Map View Delegate





@end
