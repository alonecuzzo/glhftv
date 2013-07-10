//
//  GLDefaultVideoCollectionViewLayout.m
//  GLHFTV
//
//  Created by Jabari Bell on 7/7/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

#import "GLDefaultVideoCollectionViewLayout.h"
#import "Globals.h"

static NSString *const GLVideoCollectionViewCellType = @"VideoCollectionCell";

@interface GLDefaultVideoCollectionViewLayout ()

@property(nonatomic, strong) NSDictionary *layoutInfo;

@end

static int const ddLogLevel = LOG_LEVEL_VERBOSE;

@implementation GLDefaultVideoCollectionViewLayout

#pragma mark - Lifecycle

- (id)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self) {
        [self setup];
    }
    
    return self;
}

- (void)setup
{
    self.itemInsets = UIEdgeInsetsMake(kInset, kInset, kInset, kInset);
    self.itemSize = CGSizeMake([UIScreen mainScreen].bounds.size.width - kInset * 2, 125.0f);
    self.interItemSpacingY = 12.0f;
    self.numberOfColumns = 1;
}

#pragma mark - Private

- (CGRect)frameForVideoCellAtIndexPath:(NSIndexPath *)indexPath
{
//    NSInteger row = indexPath.section / self.numberOfColumns;
//    NSInteger column = indexPath.section % self.numberOfColumns;
//    
//    CGFloat spacingX = self.collectionView.bounds.size.width -
//    self.itemInsets.left -
//    self.itemInsets.right -
//    (self.numberOfColumns * self.itemSize.width);
//    
//    if (self.numberOfColumns > 1) spacingX = spacingX / (self.numberOfColumns - 1);
//    
//    CGFloat originX = floorf(self.itemInsets.left + (self.itemSize.width + spacingX) * column);
//
    int sectionOffset = 0;
    DDLogVerbose(@"section: %d", indexPath.section);
    if (indexPath.section > 0) {
        for (int i = 1; i < self.collectionView.numberOfSections; i++) {
            if ((indexPath.section - i) >= 0) {
                sectionOffset += [self.collectionView numberOfItemsInSection:indexPath.section-i];
            }
        }
    }
    
    DDLogVerbose(@"section offset: %d", sectionOffset);
    
    CGFloat originY = floor(self.itemInsets.top +
                            (self.itemSize.height + self.interItemSpacingY) * (indexPath.row + sectionOffset));

    CGFloat originX = kInset;

    return CGRectMake(originX, originY, self.itemSize.width, self.itemSize.height);
}

#pragma mark - Layout

-(void)prepareLayout
{
    NSMutableDictionary *newLayoutInfo = [NSMutableDictionary dictionary];
    NSMutableDictionary *cellLayoutInfo = [NSMutableDictionary dictionary];
    
    NSInteger sectionCount = [self.collectionView numberOfSections];
    NSIndexPath *indexPath = [NSIndexPath indexPathForItem:0 inSection:0];
    
    for (NSInteger section = 0; section < sectionCount; section++) {
        NSInteger itemCount = [self.collectionView numberOfItemsInSection:section];
        for (NSInteger item = 0; item < itemCount; item++) {
            indexPath = [NSIndexPath indexPathForItem:item inSection:section];
            UICollectionViewLayoutAttributes *itemAttributes = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
            itemAttributes.frame = [self frameForVideoCellAtIndexPath:indexPath];
            cellLayoutInfo[indexPath] = itemAttributes;
        }
    }
    
    newLayoutInfo[GLVideoCollectionViewCellType] = cellLayoutInfo;
    self.layoutInfo = newLayoutInfo;
}

#pragma mark - Overriden methods

- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSMutableArray *allAttributes = [NSMutableArray arrayWithCapacity:self.layoutInfo.count];
    
    [self.layoutInfo enumerateKeysAndObjectsUsingBlock:^(NSString *elementIdentifier,
                                                         NSDictionary *elementsInfo,
                                                         BOOL *stop) {
        [elementsInfo enumerateKeysAndObjectsUsingBlock:^(NSIndexPath *indexPath,
                                                          UICollectionViewLayoutAttributes *attributes,
                                                          BOOL *innerStop) {
            if (CGRectIntersectsRect(rect, attributes.frame)) {
                [allAttributes addObject:attributes];
            }
        }];
    }];
    
    return allAttributes;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return self.layoutInfo[GLVideoCollectionViewCellType][indexPath];
}

- (CGSize)collectionViewContentSize
{
    NSInteger rowCount = 0;
    
    for (int i = 0; i < [self.collectionView numberOfSections]; i++) {
        for (int j = 0; j < [self.collectionView numberOfItemsInSection:i]; j++) {
            rowCount++;
        }
    }
    
    CGFloat height = self.itemInsets.top + (rowCount * (self.interItemSpacingY + self.itemSize.height)) + self.itemInsets.bottom;
    
    return CGSizeMake(self.collectionView.bounds.size.width, height);
}

@end
