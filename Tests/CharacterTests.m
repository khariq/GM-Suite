//
//  CharacterTests.m
//  GM Suite
//
//  Created by Michael PIckens on 2/22/14.
//  Copyright (c) 2014 Michael PIckens. All rights reserved.
//


#import <GHUnitIOS/GHUnit.h>
#import "Character.h"

@interface CharacterTests : GHTestCase

@end

@implementation CharacterTests

-(void) testInitWithName
{
    NSString* testName = @"Test Character";
    Character* test = [[Character alloc] initWithCharacterName:testName];
    
    GHAssertEqualStrings(testName, test.name, @"Names do not match");
    
}

@end
