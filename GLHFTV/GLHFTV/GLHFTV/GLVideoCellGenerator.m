//
//  GLVideoCellGenerator.m
//  GLHFTV
//
//  Created by Jabari Bell on 7/16/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

#import "GLVideoCellGenerator.h"
#import "GLVideoCollectionViewCell.h"

@implementation GLVideoCellGenerator {
    UICollectionView *_collectionView;
}

-(id)initWithCollection:(UICollectionView *)collectionView
{
    if(self = [super init]) {
        _collectionView = collectionView;
    }
    return self;
}

-(id)requestCellFromData:(id)data forIndexPath:(NSIndexPath*)indexPath
{
    GLVideoCollectionViewCell *cell = [_collectionView dequeueReusableCellWithReuseIdentifier:self.cellReuseIdentifier forIndexPath:indexPath];
   
    //some processing etc
    return cell;
}

@end
