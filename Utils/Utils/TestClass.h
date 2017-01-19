//
//  Prueba1.h
//  Utils
//
//  Created by Ryuji Kawaida on 22/11/16.
//  Copyright © 2016 Ryuji Kawaida. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestClass2.h"

@interface TestClass : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) NSInteger age;
@property (nonatomic) float height;
@property (nonatomic) BOOL isPerson;
@property (nonatomic, strong) NSMutableArray *dates;
@property (nonatomic, strong) TestClass2 *entity;

+ (id)initWithName:(NSString *)name setAge:(NSInteger)age setHeight:(float)height setIsPerson:(BOOL)isPerson setDates:(NSMutableArray *)dates setTest:(TestClass2 *)entity;

@end
