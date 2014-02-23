//
//  SceneProp.m
//  GM Suite
//
//  Created by Michael PIckens on 2/22/14.
//  Copyright (c) 2014 Michael PIckens. All rights reserved.
//

#import "SceneProp.h"

@implementation SceneProp


-(instancetype) init
{
    self = [super init];
    if (self)
    {
        self.name = @"";
        self.image = nil;
    }
    return self;
}

-(instancetype) initWithName:(NSString*)name withImageData:(NSData*) imageBlob
{
    self = [super init];
    if (self)
    {
        self.name = name;
        self.image = [[NSData alloc] initWithData:imageBlob];
    }
    return self;
}


@end
