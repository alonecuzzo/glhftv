//
//  GLVideoCollectionViewCell.h
//  GLHFTV
//
//  Created by Jabari Bell on 7/7/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

enum {
    GLVideoCollectionViewCellTypeDefault
};
typedef NSUInteger GLVideoCollectionCellType;

#import <UIKit/UIKit.h>
#import "GLRaceChipView.h"

@interface GLVideoCollectionViewCell : UICollectionViewCell

@property(strong, nonatomic) NSDictionary *data;
@property(strong, nonatomic) NSString *vsTitleLineOne;
@property(strong, nonatomic) NSString *vsTitleLineTwo;

-(void)setRaceChipOneWithType:(GLRaceChipViewType)type;
-(void)setRaceChipTwoWithType:(GLRaceChipViewType)type;

@end
