//
//  GLVideoCellGenerator.h
//  GLHFTV
//
//  Created by Jabari Bell on 7/16/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GLVideoCollectionViewCell.h"

@interface GLVideoCellGenerator : NSObject

@property(nonatomic, assign) GLVideoCollectionCellType type;
@property(strong, nonatomic) NSString *cellReuseIdentifier;

-(id)initWithCollection:(UICollectionView *)collectionView;
-(id)requestCellFromData:(id)data forIndexPath:(NSIndexPath*)indexPath;

@end
