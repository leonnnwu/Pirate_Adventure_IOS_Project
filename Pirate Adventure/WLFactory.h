//
//  WLFactory.h
//  Pirate Adventure
//
//  Created by Leon Wu on 6/17/14.
//  Copyright (c) 2014 Leon Liang Wu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WLCharacter.h"
#import "WLBoss.h"

@interface WLFactory : NSObject

-(NSArray *)tiles;
-(WLCharacter *)character;
-(WLBoss *)boss;

@end
