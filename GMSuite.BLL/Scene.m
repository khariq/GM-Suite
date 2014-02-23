//
//  Scene.m
//  GM Suite
//
//  Created by Michael PIckens on 2/21/14.
//  Copyright (c) 2014 Michael PIckens. All rights reserved.
//

#import "Scene.h"

@implementation Scene

-(instancetype) init{
    self = [super init];
    
    if (self)
    {
        self.name = @"";
        self.description = @"";
        self.notes = @"";
        self.sceneType = SceneType_None;
        self.characters = [[NSMutableDictionary alloc] init];
        self.props = [[NSMutableDictionary alloc] init];
    }
    
    return self;
}

-(instancetype) initWithName:(NSString *)name
{
    self = [self init];
    if (self)
    {
        self.name = name;
    }
    return self;
}

-(instancetype) initWithDescription:(NSString *)description
{
    self = [self init];
    
    if (self)
    {
        self.description = description;
    }
    
    return self;
}


-(instancetype) initWithDescription:(NSString *)description
                       andWithNotes:(NSString *)notes
{
    if (self)
    {
        self = [self initWithDescription:description];
        self.notes = notes;
    }
    return self;
}

-(void) addCharacter:(Character*)character
{
    [self.characters setObject:character forKey:character.name];
}

-(void) removeCharacter:(Character*)character
{
    [self.characters removeObjectForKey:character.name];
}

-(void) removeCharacterByName:(NSString *)characterName
{
    [self.characters removeObjectForKey:characterName];
}
@end
