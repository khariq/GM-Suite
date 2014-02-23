//
//  SceneTests.m
//  GM Suite
//
//  Created by Michael PIckens on 2/21/14.
//  Copyright (c) 2014 Michael PIckens. All rights reserved.
//


#import <GHUnitIOS/GHUnit.h>
#import "Scene.h"

@interface SceneTests : GHTestCase

@property (nonatomic, strong) Scene* testScene;

@end

@implementation SceneTests


-(void) setUp
{
    self.testScene = [[Scene alloc] initWithDescription:@"Test framework: Description" andWithNotes:@"Test Framework: Notes"];
}

-(void) tearDown
{
    self.testScene = nil;
}

-(void) testInit
{
    Scene* test = [[Scene alloc] init];
    GHAssertEqualStrings(@"", test.name, @"Default initalization of a scene should have no name.");
    GHAssertEqualStrings(@"", test.description, @"Default initalization of a scene should have no description.");
    GHAssertEqualStrings(@"", test.notes, @"Default initalization of a scene should have no notes.");
    
    NSArray* characters = [test.characters allKeys];
    GHAssertEquals(0U, [characters count], @"Default initalization of a scene should have no characters.");
    
    NSArray* props =[test.props allKeys];
    GHAssertEquals(0U, [props count], @"Default initalization of a scene should have no props.");
    SceneType def = SceneType_None;
    GHAssertEquals(def, test.sceneType, @"Default scene type should be none.");
}

-(void) testInitWithName
{
    NSString* sceneName = @"Test Scene";
    Scene* test = [[Scene alloc] initWithName:sceneName];
    
    GHAssertEqualStrings(sceneName, test.name, @"Scene Name was not initalized to the test value;");
    
    GHAssertEqualStrings(@"", test.description, @"Default initalization of a scene should have no description.");
    GHAssertEqualStrings(@"", test.notes, @"Default initalization of a scene should have no notes.");
    
    NSArray* characters = [test.characters allKeys];
    GHAssertEquals(0U, [characters count], @"Default initalization of a scene should have no characters.");
    
    NSArray* props =[test.props allKeys];
    GHAssertEquals(0U, [props count], @"Default initalization of a scene should have no props.");
    SceneType def = SceneType_None;
    GHAssertEquals(def, test.sceneType, @"Default scene type should be none.");

}

-(void) testInitWithDescription
{
    NSString* description = @"Test Description";
    Scene* test = [[Scene alloc] initWithDescription:description];
    GHAssertEqualStrings(description, test.description, @"Init with description does not match.");
    GHAssertEqualStrings(@"", test.notes, @"Default initalization of a scene should have no notes.");
    
    NSArray* characters = [test.characters allKeys];
    GHAssertEquals(0U, [characters count], @"Default initalization of a scene should have no characters.");
    
    NSArray* props =[test.props allKeys];
    GHAssertEquals(0U, [props count], @"Default initalization of a scene should have no props.");
    
    SceneType def = SceneType_None;
    GHAssertEquals(def, test.sceneType, @"Default scene type should be none.");
}

-(void) testInitWithDescriptionAndNotes
{
    NSString* description = @"Test Description";
    NSString* notes = @"Test Notes";
    Scene* test = [[Scene alloc] initWithDescription:description andWithNotes:notes];
    GHAssertEqualStrings(description, test.description, @"Description does not match.");
    GHAssertEqualStrings(notes, test.notes, @"Notes does not match");
    
    NSArray* characters = [test.characters allKeys];
    GHAssertEquals(0U, [characters count], @"Default initalization of a scene should have no characters.");
    
    NSArray* props =[test.props allKeys];
    GHAssertEquals(0U, [props count], @"Default initalization of a scene should have no props.");
    
    SceneType def = SceneType_None;
    GHAssertEquals(def, test.sceneType, @"Default scene type should be none.");
}

-(void) testAddCharacter
{
    Character* characterToAdd = [[Character alloc] initWithCharacterName:@"Test Character"];
    
    [self.testScene addCharacter:characterToAdd];

    GHAssertTrue([[self.testScene.characters allValues] containsObject:characterToAdd], @"Character is not found in the scenes character list.");
}

-(void) testRemoveCharacter
{
    Character* characterToAdd = [[Character alloc] initWithCharacterName:@"Test Character"];
    [self.testScene addCharacter:characterToAdd];
    
    GHAssertTrue([[self.testScene.characters allValues] containsObject:characterToAdd], @"Character is not found in the scenes character list.");
    
    [self.testScene removeCharacter:characterToAdd];
    GHAssertFalse([[self.testScene.characters allValues] containsObject:characterToAdd], @"Character is found in the scenes character list.");
    
}

-(void) testRemoveCharacterByName
{
    NSString* testName = @"Test Character";
    // Setup
    Character* characterToAdd = [[Character alloc] initWithCharacterName:testName];
    [self.testScene addCharacter:characterToAdd];
    
    GHAssertTrue([[self.testScene.characters allValues] containsObject:characterToAdd], @"Character is not found in the scenes character list.");
    
    //////
    // method under tet
    [self.testScene removeCharacterByName:testName];
    //////
    
    GHAssertFalse([[self.testScene.characters allValues] containsObject:characterToAdd], @"Character is found in the scenes character list.");
    
}


@end
