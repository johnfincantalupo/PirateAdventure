//
//  CCFactory.h
//  Pirate Adventure
//
//  Created by John Incantalupo on 10/29/13.
//  Copyright (c) 2013 Incantalupo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCCharacter.h"
#import "CCBoss.h"

@interface CCFactory : NSObject

-(NSArray *)tiles;

-(CCCharacter *) character;

-(CCBoss *) boss;

@end
