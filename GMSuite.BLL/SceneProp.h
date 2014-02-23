//
//  SceneProp.h
//  GM Suite
//
//  Created by Michael PIckens on 2/22/14.
//  Copyright (c) 2014 Michael PIckens. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SceneProp : NSObject

@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSData* image;

-(instancetype) init;
-(instancetype) initWithName:(NSString*)name withImageData:(NSData*) imageBlob;

@end
