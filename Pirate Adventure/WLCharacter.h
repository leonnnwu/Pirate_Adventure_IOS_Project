//
//  WLCharacter.h
//  Pirate Adventure
//
//  Created by Leon Wu on 6/17/14.
//  Copyright (c) 2014 Leon Liang Wu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WLWeapon.h"
#import "WLArmor.h"

@interface WLCharacter : NSObject

@property (strong, nonatomic) WLWeapon *weapon;
@property (strong, nonatomic) WLArmor *armor;
@property (nonatomic) int damage;
@property (nonatomic) int health;

@end
