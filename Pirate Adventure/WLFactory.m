//
//  WLFactory.m
//  Pirate Adventure
//
//  Created by Leon Wu on 6/17/14.
//  Copyright (c) 2014 Leon Liang Wu. All rights reserved.
//

#import "WLFactory.h"
#import "WLTile.h"

@implementation WLFactory

-(NSArray *)tiles
{
    WLTile *tile1 = [[WLTile alloc] init];
    tile1.story = @"1 Captain, we need a fearless leader such as you to undertake a voyage. You must stop the evil pirate Boss before he steals any more plunder. Would you like a blunted sword to get started?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    tile1.actionButtonName = @"Take the sword";
    WLWeapon *bluntedSword = [[WLWeapon alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 7;
    tile1.weapon = bluntedSword;
    
    WLTile *tile2 = [[WLTile alloc] init];
    tile2.story = @"2 You have come across an armory. Would you like to upgrade your armor to steel armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    tile2.actionButtonName = @"Take steel armor";
    WLArmor *steelArmor = [[WLArmor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 7;
    tile2.armor = steelArmor;
    
    WLTile *tile3 = [[WLTile alloc] init];
    tile3.story = @"3 A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.actionButtonName = @"Stop at the Dock";
    tile3.healthEffect = 17;
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    WLTile *tile4 = [[WLTile alloc] init];
    tile4.story = @"4 You have found a parrot can be used in your armor slot! Parrots are a great defender and are fiercly loyal to their captain.";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    tile4.actionButtonName = @"Adopt Parrot";
    WLArmor *parrotArmor = [[WLArmor alloc] init];
    parrotArmor.health = 20;
    parrotArmor.name = @"Parrot Armor";
    tile4.armor = parrotArmor;
    
    WLTile *tile5 = [[WLTile alloc] init];
    tile5.story = @"5 You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    tile5.actionButtonName = @"Take pistol";
    WLWeapon *pistolWeapon = [[WLWeapon alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 12;
    tile5.weapon = pistolWeapon;
    
    WLTile *tile6 = [[WLTile alloc] init];
    tile6.story = @"6 You have been captured by pirates and are ordered to walk the plank";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.actionButtonName = @"Show no fear!";
    tile6.healthEffect = -22;
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    WLTile *tile7 = [[WLTile alloc] init];
    tile7.story = @"7 You sight a pirate battle off the coast";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.actionButtonName = @"Fight those scum!";
    tile7.healthEffect = -15;
    
    WLTile *tile8 = [[WLTile alloc] init];
    tile8.story = @"8 The legend of the deep, the mighty kraken appears";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.actionButtonName = @"Abandon Ship";
    tile8.healthEffect = -46;
    
    WLTile *tile9 = [[WLTile alloc] init];
    tile9.story = @"9 You stumble upon a hidden cave of pirate treasurer";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.actionButtonName = @"Take Treasurer";
    tile9.healthEffect = 20;

    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    WLTile *tile10 = [[WLTile alloc] init];
    tile10.story = @"10 A group of pirates attempts to board your ship";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.actionButtonName = @"Repel the invaders";
    tile10.healthEffect = -15;
    
    WLTile *tile11 = [[WLTile alloc] init];
    tile11.story = @"11 In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.actionButtonName = @"Swim deeper";
    tile11.healthEffect = -7;
    
    WLTile *tile12 = [[WLTile alloc] init];
    tile12.story = @"12 Your final faceoff with the fearsome pirate boss";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.actionButtonName = @"Fight!";
    tile12.healthEffect = -15;
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    return tiles;
}

-(WLCharacter *)character
{
    WLCharacter *character = [[WLCharacter alloc] init];
    character.health = 100;
    
    WLArmor *cloakArmor = [[WLArmor alloc] init];
    cloakArmor.name = @"Cloak";
    cloakArmor.health = 5;
    character.armor = cloakArmor;
    
    WLWeapon *firstWeapon = [[WLWeapon alloc] init];
    firstWeapon.name = @"Fists of Fury";
    firstWeapon.damage = 10;
    character.weapon = firstWeapon;
    
    return character;
}

-(WLBoss *)boss
{
    WLBoss *boss = [[WLBoss alloc] init];
    boss.health = 65;
    return boss;
}

@end
