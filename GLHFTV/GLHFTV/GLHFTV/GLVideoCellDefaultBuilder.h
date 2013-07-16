//
//  GLVideoCellDefaultBuilder.h
//  GLHFTV
//
//  Created by Jabari Bell on 7/16/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GLVideoCollectionViewCell.h"

@interface GLVideoCellDefaultBuilder : NSObject

@property (nonatomic, readonly)  GLVideoCollectionViewCell *cell;

-(GLVideoCellDefaultBuilder*)buildNewCell:(NSString*)withIdentifier forIndexPath:(NSIndexPath*)indexPath forCollectionView:(UICollectionView*)collectionView;
-(GLVideoCellDefaultBuilder*)buildVsTitle;
-(GLVideoCellDefaultBuilder*)buildCastersTitle;
-(GLVideoCellDefaultBuilder*)buildEventTitle;
-(GLVideoCellDefaultBuilder*)buildRaceChips;
-(GLVideoCellDefaultBuilder*)buildBackgroundView;

@end
