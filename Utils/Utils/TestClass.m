//
//  Prueba1.m
//  Utils
//
//  Created by Ryuji Kawaida on 22/11/16.
//  Copyright © 2016 Ryuji Kawaida. All rights reserved.
//

#import "TestClass.h"

@implementation TestClass

+ (id)initWithName:(NSString *)name setAge:(NSInteger)age setHeight:(float)height setIsPerson:(BOOL)isPerson setDates:(NSMutableArray *)dates setTest:(TestClass2 *)entity
{
    TestClass *object = [[TestClass alloc] init];
    [object setName:name];
    [object setAge:age];
    [object setHeight:height];
    [object setIsPerson:isPerson];
    [object setDates:dates];
    [object setEntity:entity];
    
    return object;
}

@end
