//
//  GLVideosCollectionViewController.m
//  GLHFTV
//
//  Created by Jabari Bell on 7/7/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

#import <DDLog.h>
#import "GLCustomLogs.h"

#import "GLVideosCollectionViewController.h"
#import "GLVideoCollectionViewCell.h"
#import "GLDefaultVideoCollectionViewLayout.h"
#import "GLColorHelper.h"


static NSString *const VideoCellIdentifier = @"VideoCell";

#ifdef DEBUG
static const int ddLogLevel = LOG_FLAG_VIDEO;
#else
static const int ddLogLevel = LOG_LEVEL_WARN;
#endif

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
    
    DDLogError(@"LOLZ AN ERROR");
    DDLogInfo(@"SOME INFO");
    DDLogWarn(@"A WARNING");
    DDLogVerbose(@"VERBOSE");
    DDLogVideo(@"Video Log");
    
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor purpleColor];
    self.collectionView.backgroundColor = [GLColorHelper glBlack];
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
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 50;
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    GLVideoCollectionViewCell *cell = (GLVideoCollectionViewCell*) [collectionView dequeueReusableCellWithReuseIdentifier:VideoCellIdentifier forIndexPath:indexPath];
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath
{
    DDLogInfo(@"I LOVE YOU!");
}

@end
