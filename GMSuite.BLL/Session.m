//
//  Session.m
//  GM Suite
//
//  Created by Michael PIckens on 2/21/14.
//  Copyright (c) 2014 Michael PIckens. All rights reserved.
//

#import "Session.h"

@implementation Session


-(instancetype) init
{
    self = [super init];
    if (self)
    {
        self.name = @"";
        self.sceneList = [[NSMutableDictionary alloc] init];
    }
    return self;
}

-(instancetype) initWithName:(NSString*)name;
{
    self = [self init];
    if (self)
    {
        self.name = name;
    }
    return self;
}

-(Scene*) addNewSceneWithName:(NSString *)sceneName
{
    Scene* newScene = [[Scene alloc] initWithName:sceneName];
    [self.sceneList setObject:newScene forKey:sceneName];
    return newScene;
}

-(void) removeScene:(Scene*)scene
{
    [self removeSceneByName:scene.name];
}

-(void) removeSceneByName:(NSString*)sceneName
{
    [self.sceneList removeObjectForKey:sceneName];
}


@end
