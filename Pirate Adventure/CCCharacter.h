//
//  CCCharacter.h
//  Pirate Adventure
//
//  Created by John Incantalupo on 10/28/13.
//  Copyright (c) 2013 Incantalupo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCWeapon.h"
#import "CCArmor.h"

@interface CCCharacter : NSObject

@property (strong, nonatomic) CCWeapon *weapon;
@property (strong, nonatomic) CCArmor *armor;
@property (nonatomic) int damage;
@property (nonatomic) int health;

@end
