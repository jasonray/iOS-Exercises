//
//  Possessions.m
//  RandomPossessions
//
//  Created by Ray, Jason on 10/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Possession.h"

@implementation Possession
@synthesize possessionName, serialNumber, valueInDollars, dateCreated;

+(NSString *)getRandomValueFromList:(NSArray *)a {
    int index=rand() % [a count];
    NSString *value = [a objectAtIndex:index];
    return value;
}

+(id)randomPossession
{
    NSArray *randomAdjectives=[NSArray arrayWithObjects:@"Fluffy",@"Rusty",@"Shiny",nil];
    NSArray *randomNouns=[NSArray arrayWithObjects:@"Bear",@"Spork",@"Mac",nil];

    NSString *noun = [self getRandomValueFromList:randomNouns];
    NSString *adjective = [self getRandomValueFromList:randomAdjectives];
    NSString *name = [NSString stringWithFormat:@"%@ %@", adjective, noun];
    
    int value = rand() % 100;
    
    NSString *serialNumber = [NSString stringWithFormat:@"%c%c%c%c%c", 
                              '0' + rand() % 10, 
                              'A' + rand() % 26,
                              '0' + rand() % 10, 
                              'A' + rand() % 26, 
                              '0' + rand() % 10];
    
    Possession *p = [[self alloc] initWithPossessionName:name
                                          valueInDollars:value 
                                            serialNumber:serialNumber];
    return [p autorelease];
}

-(id)initWithPossessionName:(NSString *)name
             valueInDollars:(int)value
               serialNumber:(NSString *)num {
    self=[super init];
    
    if (self) {
        [self setPossessionName:name];
        [self setValueInDollars:value];
        [self setSerialNumber:num];
        dateCreated = [[NSDate alloc] init];
    }
    
    return self;
}

-(id)init {
    return [self initWithPossessionName:@"" valueInDollars:0 serialNumber:@""];
}

- (void)setPossessionName:(NSString *)str{
    [str retain];
    [possessionName release];
    possessionName=str;
}
- (NSString *)possessionName {
    return possessionName;
}

-(void)setSerialNumber:(NSString *)str{
    [str retain];
    [serialNumber release];
    serialNumber=str;
}
-(NSString *)serialNumber {
    return serialNumber;
}

-(void)setValueInDollars:(int)i {
    valueInDollars=i;
}
-(int)valueInDollars {
    return valueInDollars;
}

-(NSDate *) dateCreated {
    return dateCreated;
}

-(NSString *) description
{
    NSString *description=[NSString stringWithFormat:@"%@ (%@): worth $%d, recorded on %@", possessionName,serialNumber,valueInDollars,dateCreated];
    return description;
}

-(void)dealloc {
    [possessionName release];
    [serialNumber release];
    [dateCreated release];
    [super dealloc];
}

@end
