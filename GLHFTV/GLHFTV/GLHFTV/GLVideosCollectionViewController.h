//
//  GLVideosCollectionViewController.h
//  GLHFTV
//
//  Created by Jabari Bell on 7/7/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GLVideosCollectionViewController : UICollectionViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property(strong,nonatomic) IBOutlet UICollectionView *collectionView;

@end
