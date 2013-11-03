//
//  CCFactory.m
//  Pirate Adventure
//
//  Created by John Incantalupo on 10/29/13.
//  Copyright (c) 2013 Incantalupo. All rights reserved.
//

#import "CCFactory.h"
#import "CCTile.h"


@implementation CCFactory

-(NSArray *)tiles
{
    CCTile *tile1 = [[CCTile alloc]init];
    tile1.story = @"Captain, we need a fearless leader such as you to undertake a voyage.  You must stop the evil pirate Boss before he steals any more plunder.  Would you like a blunted sword to get started?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    tile1.actionButtonName = @"Take the sword";
    CCWeapon *bluntedSword = [[CCWeapon alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 7;
    tile1.weapon = bluntedSword;
    
    CCTile *tile2 = [[CCTile alloc]init];
    tile2.story = @"You have come across an armory.  Would you like to upgrade your armor to steel armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    tile2.actionButtonName = @"Take steel armor";
    CCArmor *steelArmor = [[CCArmor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 7;
    tile2.armor = steelArmor;
    
    CCTile *tile3 = [[CCTile alloc]init];
    tile3.story = @"A mysterious dock appears on the horizon.  Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.actionButtonName = @"Stop at the Dock";
    tile3.healthEffect = 17;
    
    NSArray *firstColumn = [[NSArray alloc] initWithObjects:tile1, tile2, tile3, nil];
    
    CCTile *tile4 = [[CCTile alloc]init];
    tile4.story = @"You have found a parrot can be used in your armor slot!  Parrots are a great defender and are fiercly loyal to their captain.";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    tile4.actionButtonName = @"Adopt Parrot";
    CCArmor *parrotArmor = [[CCArmor alloc] init];
    parrotArmor.health = 20;
    parrotArmor.name = @"Parrot Armor";
    tile4.armor = parrotArmor;
    
    CCTile *tile5 = [[CCTile alloc]init];
    tile5.story = @"You have stumbled upon a cache of pirate weapons.  Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    tile5.actionButtonName = @"Take pistol";
    CCWeapon *pistolWeapon = [[CCWeapon alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 12;
    tile5.weapon = pistolWeapon;
    
    CCTile *tile6 = [[CCTile alloc]init];
    tile6.story = @"You have been captured by pirates and are ordered to walk the plank";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.actionButtonName = @"Show no fear!";
    tile6.healthEffect = -22;
    
    NSArray *secondColumn = [[NSArray alloc] initWithObjects:tile4, tile5, tile6, nil];
    
    CCTile *tile7 = [[CCTile alloc]init];
    tile7.story = @"You sight a pirate battle off the coast";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.actionButtonName = @"Fight those scum!";
    tile7.healthEffect = -15;
    
    CCTile *tile8 = [[CCTile alloc]init];
    tile8.story = @"The legend of the deep, the mighty kraken appears";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.actionButtonName = @"Abandon Ship";
    tile8.healthEffect = -46;
    
    CCTile *tile9 = [[CCTile alloc]init];
    tile9.story = @"You stumble upon a hidden cave of pirate treasurer";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.actionButtonName = @"Take Treasurer";
    tile9.healthEffect = 20;
    
    NSArray *thirdColumn = [[NSArray alloc] initWithObjects:tile7, tile8, tile9, nil];
    
    CCTile *tile10 = [[CCTile alloc]init];
    tile10.story = @"A group of pirates attempts to board your ship";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.actionButtonName = @"Repel the invaders";
    tile10.healthEffect = 15;
    
    
    CCTile *tile11 = [[CCTile alloc]init];
    tile11.story = @"In the deep of the sea many things live and many things can be found.  Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.actionButtonName = @"Swim deeper";
    tile11.healthEffect = -7;
   
    
    CCTile *tile12 = [[CCTile alloc]init];
    tile12.story = @"Your final faceoff with the fearsome pirate boss";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.actionButtonName = @"Fight!";
    tile12.healthEffect = -15;
    
    NSArray *fourthColumn = [[NSArray alloc] initWithObjects:tile10, tile11, tile12, nil];
    
    NSArray *tiles = [[NSArray alloc]initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
    
}

-(CCCharacter *) character
{
    CCCharacter *character = [[CCCharacter alloc]init];
    
    character.health = 100;
    
    CCWeapon *weapon = [[CCWeapon alloc]init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    
    CCArmor *armor = [[CCArmor alloc]init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    
    return character;
}

-(CCBoss *) boss
{
    CCBoss *boss = [[CCBoss alloc]init];
    boss.health = 65;
    
    return boss;
}

@end
