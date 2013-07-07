//
//  GLDefaultVideoCollectionViewLayout.h
//  GLHFTV
//
//  Created by Jabari Bell on 7/7/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GLDefaultVideoCollectionViewLayout : UICollectionViewLayout

@property(nonatomic) UIEdgeInsets itemInsets;
@property(nonatomic) CGSize itemSize;
@property(nonatomic) CGFloat interItemSpacingY;
@property(nonatomic) NSInteger numberOfColumns;

@end
