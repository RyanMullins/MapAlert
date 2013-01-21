//
//  CTCDAlertViewController.h
//  MapAlert
//
//  Created by Ryan Mullins on 1/21/13.
//  Copyright (c) 2013 com.cartocadabra.mobile. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapBox/MapBox.h>

@interface CTCDAlertViewController : UIViewController <RMMapViewDelegate>

@property (nonatomic, strong) IBOutlet RMMapView * mapView;
@property (nonatomic, strong) IBOutlet UIButton * alertButton;
@property (nonatomic, strong) IBOutlet UIButton * settingsButton;

@end
