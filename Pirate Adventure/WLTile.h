//
//  WLTile.h
//  Pirate Adventure
//
//  Created by Leon Wu on 6/17/14.
//  Copyright (c) 2014 Leon Liang Wu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WLWeapon.h"
#import "WLArmor.h"

@interface WLTile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) WLWeapon *weapon;
@property (strong, nonatomic) WLArmor * armor;
@property (nonatomic) int healthEffect;

@end
