//
//  WLViewController.h
//  Pirate Adventure
//
//  Created by Leon Wu on 6/17/14.
//  Copyright (c) 2014 Leon Liang Wu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WLCharacter.h"
#import "WLBoss.h"

@interface WLViewController : UIViewController

@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;
@property (strong, nonatomic) WLCharacter *character;
@property (strong, nonatomic) WLBoss *boss;

@property (strong, nonatomic) IBOutlet UILabel *healthNum;
@property (strong, nonatomic) IBOutlet UILabel *damageNum;
@property (strong, nonatomic) IBOutlet UILabel *weaponName;
@property (strong, nonatomic) IBOutlet UILabel *armorName;
@property (strong, nonatomic) IBOutlet UIButton *actionBtName;
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;
@property (strong, nonatomic) IBOutlet UIButton *northLabel;
@property (strong, nonatomic) IBOutlet UIButton *eastLabel;
@property (strong, nonatomic) IBOutlet UIButton *westLabel;
@property (strong, nonatomic) IBOutlet UIButton *southLabel;
@property (strong, nonatomic) IBOutlet UIImageView *bgImage;

- (IBAction)actionBt:(UIButton *)sender;
- (IBAction)resetBt:(UIButton *)sender;
- (IBAction)northBt:(UIButton *)sender;
- (IBAction)eastBt:(UIButton *)sender;
- (IBAction)westBt:(UIButton *)sender;
- (IBAction)southBt:(UIButton *)sender;


@end
