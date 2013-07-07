//
//  GLVideosCollectionViewController.m
//  GLHFTV
//
//  Created by Jabari Bell on 7/7/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

#import "GLVideosCollectionViewController.h"
#import "GLVideoCollectionViewCell.h"
#import "GLDefaultVideoCollectionViewLayout.h"

static NSString *const VideoCellIdentifier = @"VideoCell";

@interface GLVideosCollectionViewController ()
@property (nonatomic, weak) IBOutlet GLDefaultVideoCollectionViewLayout *videoCollectionLayout;
@end

@implementation GLVideosCollectionViewController {
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor purpleColor];
    
    [self.collectionView registerClass:[GLVideoCollectionViewCell class] forCellWithReuseIdentifier:VideoCellIdentifier];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionView Methods

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 10;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 5;
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    GLVideoCollectionViewCell *cell = (GLVideoCollectionViewCell*) [collectionView dequeueReusableCellWithReuseIdentifier:VideoCellIdentifier forIndexPath:indexPath];
    return cell;
}

@end
