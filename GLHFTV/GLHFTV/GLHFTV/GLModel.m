//
//  GLModel.m
//  GLHFTV
//
//  Created by Jabari Bell on 7/10/13.
//  Copyright (c) 2013 23bit. All rights reserved.
//

#import "GLModel.h"
#import "Globals.h"

@implementation GLModel

+(NSArray*)getModel
{
    NSArray *model = @[
                       [NSDictionary dictionaryWithObjects:@[
                            @"LiquidTLO",
                            @"Flash",
                            GLRaceTypeZerg,
                            GLRaceTypeTerran,
                            @"MLG Dallas",
                            @7,
                            @"Day9",
                            @"Husky",
                            @"09.12.13",
                            @NO
                        ] forKeys:@[
                            @"player1name",
                            @"player2name",
                            @"player1race",
                            @"player2race",
                            @"eventname",
                            @"matchcount",
                            @"caster1name",
                            @"caster2name",
                            @"matchdate",
                            @"viewed"
                        ]],
                       
                       [NSDictionary dictionaryWithObjects:@[
                            @"WhiteRa",
                            @"Grubby",
                            GLRaceTypeProtoss,
                            GLRaceTypeProtoss,
                            @"MLG Anaheim",
                            @3,
                            @"Madals",
                            @"iNControl",
                            @"09.22.13",
                            @YES
                        ] forKeys:@[
                            @"player1name",
                            @"player2name",
                            @"player1race",
                            @"player2race",
                            @"eventname",
                            @"matchcount",
                            @"caster1name",
                            @"caster2name",
                            @"matchdate",
                            @"viewed"
                        ]],
                       
                       [NSDictionary dictionaryWithObjects:@[
                                @"LiquidHero",
                                @"Polt",
                                GLRaceTypeProtoss,
                                GLRaceTypeTerran,
                                @"MLG Anaheim",
                                @3,
                                @"Madals",
                                @"iNControl",
                                @"09.22.13",
                                @YES
                            ] forKeys:@[
                                @"player1name",
                                @"player2name",
                                @"player1race",
                                @"player2race",
                                @"eventname",
                                @"matchcount",
                                @"caster1name",
                                @"caster2name",
                                @"matchdate",
                                @"viewed"
                            ]]
                       ];
    
    return model;
}

@end
