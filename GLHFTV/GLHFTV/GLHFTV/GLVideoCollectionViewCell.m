//
//  GLVideoCollectionViewCell.m
//  GLHFTV
//
//  Created by Jabari Bell on 7/7/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

#import <DDLog.h>

#import "GLVideoCollectionViewCell.h"
#import "GLColorHelper.h"
#import "Globals.h"
#import "UIView+GCLibrary.h"
#import "GLFontHelper.h"
#import "GLRaceChipView.h"

static const int ddLogLevel = LOG_LEVEL_VERBOSE;

@implementation GLVideoCollectionViewCell {
    UILabel *_vsTitleLineOneLabel;
    UILabel *_vsTitleLineTwoLabel;
    GLRaceChipView *_raceChipOne;
    GLRaceChipView *_raceChipTwo;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [GLColorHelper glVideoFeedCellGray];
    }
    return self;
}

- (void)layoutSubviews
{
}

#pragma mark - Setup/Building Business

-(void)setVsTitleLineOne:(NSString *)vsTitleLineOne
{
    _vsTitleLineOneLabel = [[UILabel alloc] initWithFrame:CGRectMake(kVideoCellInset, 50, 212, 30)];
    _vsTitleLineOneLabel.text = vsTitleLineOne;
    _vsTitleLineOneLabel.backgroundColor = [UIColor clearColor];
    _vsTitleLineOneLabel.textColor = [GLColorHelper glBlue];
    _vsTitleLineOneLabel.font = [GLFontHelper getFont:GLFontTypeAvenirLight withSize:GLFontSizeLarge];
    [self.contentView addSubview:_vsTitleLineOneLabel];
}

-(void)setVsTitleLineTwo:(NSString *)vsTitleLineTwo
{
    _vsTitleLineTwoLabel = [[UILabel alloc] initWithFrame:CGRectMake(kVideoCellInset, _vsTitleLineOneLabel.height + _vsTitleLineOneLabel.y, 212, 30)];
    NSString *vsString = NSLocalizedString(@"vs", @"versus string in video cell");
    _vsTitleLineTwoLabel.text = [NSString stringWithFormat:@"%@ %@", vsString, vsTitleLineTwo];
    _vsTitleLineTwoLabel.backgroundColor = [UIColor clearColor];
    _vsTitleLineTwoLabel.textColor = [GLColorHelper glBlue];
    _vsTitleLineTwoLabel.font = [GLFontHelper getFont:GLFontTypeAvenirLight withSize:GLFontSizeLarge];
    [self.contentView addSubview:_vsTitleLineTwoLabel];
}

-(void)setRaceChipOneWithType:(GLRaceChipViewType)type
{
    _raceChipOne = [[GLRaceChipView alloc] initWithType:type];
    [_raceChipOne setX:266];
    [_raceChipOne setY:kVideoCellInset];
    [self.contentView addSubview:_raceChipOne];
}

-(void)setRaceChipTwoWithType:(GLRaceChipViewType)type
{
    _raceChipTwo = [[GLRaceChipView alloc] initWithType:type];
    [_raceChipTwo setX:_raceChipOne.x + _raceChipOne.width + 4];
    [_raceChipTwo setY:_raceChipOne.y];
    [self.contentView addSubview:_raceChipTwo];
}


@end
