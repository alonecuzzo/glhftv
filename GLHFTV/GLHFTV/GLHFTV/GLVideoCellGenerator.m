//
//  GLVideoCellGenerator.m
//  GLHFTV
//
//  Created by Jabari Bell on 7/16/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

#import "GLVideoCellGenerator.h"
#import "GLVideoCollectionViewCell.h"
#import "GLVideoCellDefaultBuilder.h"

@implementation GLVideoCellGenerator {
    UICollectionView *_collectionView;
    GLVideoCellDefaultBuilder *_cellBuilder;
}

#pragma mark - Builder Stuff

-(GLVideoCollectionViewCell*)buildDefaultCell:(NSString*)identifier forIndexPath:(NSIndexPath*)indexPath withData:(id)data
{
    _cellBuilder = [[GLVideoCellDefaultBuilder alloc] init];
    [_cellBuilder buildNewCell:identifier forIndexPath:indexPath forCollectionView:_collectionView];
    [_cellBuilder cell].data = (NSDictionary*)data;
    [_cellBuilder buildBackgroundView];
    [_cellBuilder buildVsTitle];
    [_cellBuilder buildCastersTitle];
    [_cellBuilder buildEventTitle];
    [_cellBuilder buildRaceChips];
    return [_cellBuilder cell];
}

#pragma mark - Initilization Stuff

-(id)initWithCollectionView:(UICollectionView *)collectionView
{
    if(self = [super init]) {
        _collectionView = collectionView;
    }
    return self;
}

-(id)requestCellFromData:(id)data forIndexPath:(NSIndexPath*)indexPath
{
    return [self buildDefaultCell:self.cellReuseIdentifier forIndexPath:indexPath withData:data];
//    return [_collectionView dequeueReusableCellWithReuseIdentifier:self.cellReuseIdentifier forIndexPath:indexPath];
}

@end
