//
//  CTCDSymbolCell.h
//  MapAlert
//
//  Created by Ryan Mullins on 1/21/13.
//  Copyright (c) 2013 com.cartocadabra.mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CTCDSymbolCell : UICollectionViewCell

@property (strong, nonatomic) IBOutlet UIImageView * symbolImage;
@property (strong, nonatomic) IBOutlet UILabel * symbolName;

@end
