//
//  TestClass2.m
//  Utils
//
//  Created by Ryuji Kawaida on 22/11/16.
//  Copyright © 2016 Ryuji Kawaida. All rights reserved.
//

#import "TestClass2.h"

@implementation TestClass2

+ (id)initWithLongitude:(float)longitude setLatitude:(float)latitude setCountry:(NSString *)country
{
    TestClass2 *instance = [[TestClass2 alloc] init];
    [instance setLongitude:longitude];
    [instance setLatitude:latitude];
    [instance setCountry:country];
    
    return instance;
}

@end
