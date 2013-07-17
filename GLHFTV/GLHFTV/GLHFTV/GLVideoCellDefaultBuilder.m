//
//  GLVideoCellDefaultBuilder.m
//  GLHFTV
//
//  Created by Jabari Bell on 7/16/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

#import "GLVideoCellDefaultBuilder.h"
#import "GLRaceChipView.h"
#import "Globals.h"

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
    GLRaceChipViewType chipOneType;
    GLRaceChipViewType chipTwoType;
    NSString *playerOneType = [[_cell data] objectForKey:@"player1race"];
    NSString *playerTwoType = [[_cell data] objectForKey:@"player2race"];
    
    if ([playerOneType isEqualToString:GLRaceTypeZerg]) {
        chipOneType = GLRaceChipViewTypeZerg;
    } else if([playerOneType isEqualToString:GLRaceTypeTerran]) {
        chipOneType = GLRaceChipViewTypeTerran;
    } else {
        chipOneType = GLRaceChipViewTypeProtoss;
    }
    
    if ([playerTwoType isEqualToString:GLRaceTypeZerg]) {
        chipTwoType = GLRaceChipViewTypeZerg;
    } else if([playerTwoType isEqualToString:GLRaceTypeTerran]) {
        chipTwoType = GLRaceChipViewTypeTerran;
    } else {
        chipTwoType = GLRaceChipViewTypeProtoss;
    }
    
    [_cell setRaceChipOneWithType:chipOneType];
    [_cell setRaceChipTwoWithType:chipTwoType];
    
    return self;
}

-(GLVideoCellDefaultBuilder*)buildBackgroundView
{
    return self;
}

@end
