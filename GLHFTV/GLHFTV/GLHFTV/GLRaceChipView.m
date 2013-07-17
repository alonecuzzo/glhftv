//
//  GLRaceChipView.m
//  GLHFTV
//
//  Created by Jabari Bell on 7/16/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

#import "GLRaceChipView.h"
#import "GLColorHelper.h"

@implementation GLRaceChipView

#define kRaceChipDimension 8.0f

const CGRect RaceChipRect = {{0.0, 0.0}, {kRaceChipDimension, kRaceChipDimension}};

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(id)initWithType:(GLRaceChipViewType)type
{
    if (self = [super initWithFrame:RaceChipRect]) {
        switch (type) {
            case GLRaceChipViewTypeProtoss:
                self.backgroundColor = [GLColorHelper glProtossYellow];
                break;
                
            case GLRaceChipViewTypeTerran:
                self.backgroundColor = [GLColorHelper glTerranRed];
                break;
                
            case GLRaceChipViewTypeZerg:
                self.backgroundColor = [GLColorHelper glZergPurple];
                break;
                
            default:
                break;
        }
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
