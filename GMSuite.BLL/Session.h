//
//  Session.h
//  GM Suite
//
//  Created by Michael PIckens on 2/21/14.
//  Copyright (c) 2014 Michael PIckens. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Scene.h"
#import "Character.h"

@interface Session : NSObject

@property (nonatomic, strong) NSMutableDictionary* sceneList;
@property (nonatomic, strong) NSString* name;

-(instancetype) init;
-(instancetype) initWithName:(NSString*)name;

-(Scene*) addNewSceneWithName:(NSString *)sceneName;
-(void) removeScene:(Scene*)scene;
-(void) removeSceneByName:(NSString*)sceneName;

@end
