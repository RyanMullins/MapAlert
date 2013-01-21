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

- (void) viewDidLoad {
    [super viewDidLoad];
    
    RMMapBoxSource * tileSource = [[RMMapBoxSource alloc] initWithMapID:(([[UIScreen mainScreen] scale] > 1.0) ? MAP_ID_RETINA : MAP_ID)];
    [[self mapView] setTileSource:tileSource];
//    [theMap setZoom:ZOOM_LEVEL_DEFAULT];
//    [theMap setMaxZoom:ZOOM_LEVEL_MAX];
//    [theMap setMinZoom:ZOOM_LEVEL_MIN];
//    [theMap setShowsUserLocation:YES];
//    [theMap setCenterCoordinate:CLLocationCoordinate2DMake(40.664167, -73.938611)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma MapBox Map View Delegate





@end
