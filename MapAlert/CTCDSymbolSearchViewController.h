//
//  CTCDSymbolSearchViewController.h
//  MapAlert
//
//  Created by Ryan Mullins on 1/21/13.
//  Copyright (c) 2013 com.cartocadabra.mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CTCDSymbolSearchViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@property (strong, nonatomic) IBOutlet UISearchBar * searchBar;
@property (strong, nonatomic) IBOutlet UICollectionView * symbolCollectionView;

@end
