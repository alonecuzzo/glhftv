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

@interface GLVideoCollectionViewCell : UICollectionViewCell

@property(strong, nonatomic) NSDictionary *data;
@property(strong, nonatomic) NSString *vsTitleLineOne;
@property(strong, nonatomic) NSString *vsTitleLineTwo;

@end
