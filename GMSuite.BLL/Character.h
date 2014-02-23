//
//  Character.h
//  GM Suite
//
//  Created by Michael PIckens on 2/21/14.
//  Copyright (c) 2014 Michael PIckens. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Character : NSObject

@property (nonatomic, strong) NSString* name;

-(instancetype) initWithCharacterName:(NSString*) name;

@end
