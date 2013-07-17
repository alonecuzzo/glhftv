//
//  GLRaceChipView.h
//  GLHFTV
//
//  Created by Jabari Bell on 7/16/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

enum {
    GLRaceChipViewTypeProtoss,
    GLRaceChipViewTypeZerg,
    GLRaceChipViewTypeTerran
};
typedef NSUInteger GLRaceChipViewType;

#import <UIKit/UIKit.h>

@interface GLRaceChipView : UIView

-(id)initWithType:(GLRaceChipViewType)type;

@end
