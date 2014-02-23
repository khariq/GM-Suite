//
//  PropTests.m
//  GM Suite
//
//  Created by Michael PIckens on 2/22/14.
//  Copyright (c) 2014 Michael PIckens. All rights reserved.
//

#import "SceneProp.h"
#import <GHUnitIOS/GHUnit.h>

@interface PropTests : GHTestCase

@end

@implementation PropTests

-(void) testInit
{

    SceneProp* test = [[SceneProp alloc] init];
    GHAssertEqualStrings(@"", test.name, @"Default initializer for a prop should have no name.");
    GHAssertNil(test.image, @"Default initalizer for a prop should have no image");
    
}

@end
