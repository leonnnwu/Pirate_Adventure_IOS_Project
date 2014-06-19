//
//  WLViewController.m
//  Pirate Adventure
//
//  Created by Leon Wu on 6/17/14.
//  Copyright (c) 2014 Leon Liang Wu. All rights reserved.
//

#import "WLViewController.h"
#import "WLFactory.h"
#import "WLTile.h"

@interface WLViewController ()

@end

@implementation WLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    WLFactory *factory = [[WLFactory alloc] init];
    self.tiles = [factory tiles];
    self.currentPoint = CGPointMake(0, 0);
    self.character = [factory character];
    self.boss = [factory boss];
    //NSLog(@"%f %f", self.currentPoint.x, self.currentPoint.y);
    [self updateCharacterStatesForArmor:nil withWeapon:nil withHealthEffect:0];
    [self updateTile];
    [self updateButtons];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - helper methods

-(void)updateTile
{
    WLTile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.storyLabel.text = tileModel.story;
    self.bgImage.image = tileModel.backgroundImage;
    self.healthNum.text = [NSString stringWithFormat:@"%i", self.character.health];
    self.damageNum.text = [NSString stringWithFormat:@"%i", self.character.damage];
    self.weaponName.text = self.character.weapon.name;
    self.armorName.text = self.character.armor.name;
    [self.actionBtName setTitle:tileModel.actionButtonName forState:UIControlStateNormal];
}

-(void) updateButtons
{
    self.westLabel.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
    self.eastLabel.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
    self.northLabel.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
    self.southLabel.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)];
}

-(BOOL) tileExistsAtPoint:(CGPoint)point
{
    if(point.x >= 0 && point.y >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count]) {
        return NO;
    }else {
        return YES;
    }
}

-(void)updateCharacterStatesForArmor:(WLArmor *)armor withWeapon:(WLWeapon *)weapon withHealthEffect:(int)healthEffect
{
    if (armor != nil) {
        self.character.health += armor.health - self.character.armor.health;
        self.character.armor = armor;
    } else if(weapon != nil) {
        self.character.damage += weapon.damage - self.character.weapon.damage;
        self.character.weapon = weapon;
    } else if(healthEffect != 0) {
        self.character.health += healthEffect;
    } else {
        self.character.health += self.character.armor.health;
        self.character.damage += self.character.weapon.damage;
    }
}

#pragma mark = IBAction

- (IBAction)actionBt:(UIButton *)sender {
    WLTile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    if (self.character.health <= 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Death" message:@"You have died restart the game!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
        return;
    }else if(self.boss.health <= 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Victory" message:@"You killed the evil pirate boss!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
        return;
    }
    if (tileModel.healthEffect == -15) {
        self.boss.health -= self.character.weapon.damage;
    }
    [self updateCharacterStatesForArmor:tileModel.armor withWeapon:tileModel.weapon withHealthEffect:tileModel.healthEffect];
    [self updateTile];
}

- (IBAction)resetBt:(UIButton *)sender {
    self.character = nil;
    self.boss = nil;
    [self viewDidLoad];
}

- (IBAction)northBt:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)eastBt:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)westBt:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)southBt:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
    [self updateButtons];
    [self updateTile];
}
@end
