//
//  Scene.h
//  GM Suite
//
//  Created by Michael PIckens on 2/21/14.
//  Copyright (c) 2014 Michael PIckens. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import "types.h"

@interface Scene : NSObject

// Scene Type
@property (nonatomic) SceneType sceneType;
// Maps character names to Characters
@property (nonatomic, strong) NSMutableDictionary * characters;
// Maps name of prop to Prop
@property (nonatomic, strong) NSMutableDictionary * props;
@property (nonatomic, strong) NSString * description;
@property (nonatomic, strong) NSString * notes;
@property (nonatomic, strong) NSString * name;

-(instancetype) init;
-(instancetype) initWithName:(NSString *)name;
-(instancetype) initWithDescription:(NSString *)description;
-(instancetype) initWithDescription:(NSString *)description
                       andWithNotes:(NSString *)notes;

-(void) addCharacter:(Character*)character;
-(void) removeCharacter:(Character*)character;
-(void) removeCharacterByName:(NSString *)characterName;
@end
