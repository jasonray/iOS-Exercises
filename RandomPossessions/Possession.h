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
    NSString *possessionName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
    
}

+(id)randomPossession;

-(id)initWithPossessionName:(NSString *)name
             valueInDollars:(int)value
               serialNumber:(NSString *)num;

-(void)setPossessionName:(NSString *)str;
-(NSString *)possessionName;

-(void)setSerialNumber:(NSString *)str;
-(NSString *)serialNumber;

-(void)setValueInDollars:(int)i;
-(int)valueInDollars;

-(NSDate *)dateCreated;
@end
