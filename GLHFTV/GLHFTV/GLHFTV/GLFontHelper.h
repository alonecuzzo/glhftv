//
//  GLFontHelper.h
//  GLHFTV
//
//  Created by Jabari Bell on 7/16/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

enum {
    GLFontTypeAvenirLight,
    GLFontTypeAvenirHeavy
};
typedef NSUInteger GLFontType;

enum {
    GLFontSizeSmall = 12,
    GLFontSizeMedium = 17,
    GLFontSizeLarge = 24,
    GLFontSizeHuge = 55
};
typedef NSUInteger GLFontSize;

#import <Foundation/Foundation.h>

@interface GLFontHelper : NSObject

+ (UIFont*)getFont:(GLFontType)font withSize:(GLFontSize)size;

@end
