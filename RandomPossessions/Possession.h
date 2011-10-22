//
//  Possessions.h
//  RandomPossessions
//
//  Created by Ray, Jason on 10/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Possession : NSObject
{
    
}

+(id)randomPossession;

-(id)initWithPossessionName:(NSString *)name
             valueInDollars:(int)value
               serialNumber:(NSString *)num;

@property (nonatomic, copy) NSString *possessionName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly) NSDate *dateCreated;

@end
