//
//  GLAppDelegate.h
//  GLHFTV
//
//  Created by Jabari Bell on 7/7/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GLVideosCollectionViewController;

@interface GLAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) GLVideosCollectionViewController *viewController;

@end
