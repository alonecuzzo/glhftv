//
//  GLFontHelper.m
//  GLHFTV
//
//  Created by Jabari Bell on 7/16/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

#import "GLFontHelper.h"

@implementation GLFontHelper

+(NSString*)getFontString:(GLFontType)font
{
    NSString *fontName;
    switch (font) {
        case GLFontTypeAvenirLight:
            fontName = @"Avenir-Light";
            break;
        case GLFontTypeAvenirHeavy:
            fontName = @"Avenir-Heavy";
            break;
            
        default:
            break;
    }
    return fontName;
}

+ (UIFont*)getFont:(GLFontType)font withSize:(GLFontSize)size
{
    return [UIFont fontWithName:[GLFontHelper getFontString:font] size:size];
}

@end
