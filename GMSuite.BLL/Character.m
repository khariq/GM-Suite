//
//  Character.m
//  GM Suite
//
//  Created by Michael PIckens on 2/21/14.
//  Copyright (c) 2014 Michael PIckens. All rights reserved.
//

#import "Character.h"

@implementation Character

-(instancetype) initWithCharacterName:(NSString*) name
{
    self = [super init];
    if (self)
    {
        self.name = name;
    }
    return self;
    
}

@end
