//
//  main.m
//  RandomPossessions
//
//  Created by Ray, Jason on 10/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Possession.h"

int main (int argc, const char * argv[])
{
    NSLog(@"init pool");
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    // insert code here...
    NSLog(@"Create array");
    NSMutableArray *items = [[NSMutableArray alloc] init];

    NSLog(@"Begin populating array");
    [items addObject:@"One"];
    [items addObject:@"Two"];
    [items addObject:@"Three"];
    [items insertObject:@"zero" atIndex:0];
    
    for (int i=0; i<20; i++) {
        Possession *randomPossession=[Possession randomPossession];
        [items addObject:randomPossession];
    }

    NSLog(@"Read array");
    for(int i=0;i<[items count]; i++) {
        NSLog(@"%@", [items objectAtIndex:i]);
    }

    
    NSLog(@"Begin release array");
    [items release];
    items=nil;

    [pool drain];
    return 0;
}

