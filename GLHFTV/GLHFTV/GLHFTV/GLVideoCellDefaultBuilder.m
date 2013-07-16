//
//  GLVideoCellDefaultBuilder.m
//  GLHFTV
//
//  Created by Jabari Bell on 7/16/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

#import "GLVideoCellDefaultBuilder.h"

@implementation GLVideoCellDefaultBuilder {
    GLVideoCollectionViewCell *_cell;
}

-(GLVideoCellDefaultBuilder*)buildNewCell:(NSString*)withIdentifier forIndexPath:(NSIndexPath*)indexPath forCollectionView:(UICollectionView*)collectionView
{
    _cell = [collectionView dequeueReusableCellWithReuseIdentifier:withIdentifier forIndexPath:indexPath];
    return self;
}

-(GLVideoCellDefaultBuilder*)buildVsTitle
{
    [_cell setVsTitleLineOne:[_cell.data objectForKey:@"player1name"]];
    [_cell setVsTitleLineTwo:[_cell.data objectForKey:@"player2name"]];
    return self;
}

-(GLVideoCellDefaultBuilder*)buildCastersTitle
{
    return self;
}

-(GLVideoCellDefaultBuilder*)buildEventTitle
{
    return self;
}

-(GLVideoCellDefaultBuilder*)buildRaceChips
{
    return self;
}

-(GLVideoCellDefaultBuilder*)buildBackgroundView
{
    return self;
}

@end
