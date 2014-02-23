//
//  SessionTests.m
//  GM Suite
//
//  Created by Michael PIckens on 2/23/14.
//  Copyright (c) 2014 Michael PIckens. All rights reserved.
//

#import <GHUnitIOS/GHUnit.h>
#import "Session.h"
@interface SessionTests : GHTestCase

@property (nonatomic, strong) Session* testSession;
@property (nonatomic, strong) Scene* testScene;
@property (nonatomic, strong) NSString* sceneName;
@end

@implementation SessionTests

-(void) setUp
{
    self.testSession = [[Session alloc] init];
    self.sceneName = @"Test Scene";
    self.testScene = [self.testSession addNewSceneWithName:self.sceneName];
}

-(void) testInit
{
    Session* test = [[Session alloc] init];
    GHAssertNotNil(test, @"Session failed to init.  Returned session point was nil");
    
    GHAssertEqualStrings(@"", test.name, @"Default session initalizer did not set the name to the empty string." );
    GHAssertEquals(0U, [test.sceneList count], @"Default session initalizer did not set the scene list to an empty list.");
}

-(void) testInitWithName
{
    NSString* testName = @"Test Session";
    Session* test = [[Session alloc] initWithName:testName];
    GHAssertNotNil(test, @"Session failed to init.  Returned session point was nil");
    
    GHAssertEqualStrings(testName, test.name, @"Session initalizer did not set the name to the test string." );
    GHAssertEquals(0U, [test.sceneList count], @"Default session initalizer did not set the scene list to an empty list.");

}

-(void) testAddScene
{
    Scene* newScene = [self.testSession addNewSceneWithName:self.sceneName];
    GHAssertNotNil(newScene, @"Failed to add new scene.  Returned scene pointer was nil");
}

-(void) testRemoveScene
{
    GHAssertTrue([[self.testSession.sceneList allValues] containsObject:self.testScene], @"Set up did not add the test scene");
    
    [self.testSession removeScene:self.testScene];
    
    GHAssertFalse([[self.testSession.sceneList allValues] containsObject:self.testScene], @"Test Session contains test scene after call to remove scene");
    
    
}

-(void) testRemoveSceneByName
{
    GHAssertTrue([[self.testSession.sceneList allValues] containsObject:self.testScene], @"Set up did not add the test scene");
    
    [self.testSession removeSceneByName:self.testScene.name];
    
    GHAssertFalse([[self.testSession.sceneList allValues] containsObject:self.testScene], @"Test Session contains test scene after call to remove scene by name");
    
}

@end
