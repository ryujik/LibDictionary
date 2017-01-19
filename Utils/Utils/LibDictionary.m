//
//  LibDictionary.m
//  Utils
//
//  Created by Ryuji Kawaida on 22/11/16.
//  Copyright © 2016 Ryuji Kawaida. All rights reserved.
//

#import "LibDictionary.h"
#import <objc/runtime.h>

@implementation LibDictionary

+ (id)classToDictionary:(id)object
{
    unsigned int propertyCount = 0;
    objc_property_t * properties = class_copyPropertyList([object class], &propertyCount);
    
    if (properties == NULL) {
        if ([object isKindOfClass:[NSArray class]]) {
            NSMutableArray *array = [[NSMutableArray alloc] init];
            for (id e in object) {
                if ([e isKindOfClass:[NSString class]]) {
                    [array addObject:e];
                } else if ([e isKindOfClass:[NSNumber class]]) {
                    [array addObject:e];
                } else {
                    [array addObject:[self classToDictionary:object]];
                }
            }
            return array;
        } else
            return object;
    }
    
    NSMutableArray * propertyNames = [NSMutableArray array];
    for (unsigned int i = 0; i < propertyCount; ++i) {
        objc_property_t property = properties[i];
        const char * name = property_getName(property);
        [propertyNames addObject:[NSString stringWithUTF8String:name]];
    }
    free(properties);
 
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    
    for (NSString *name in propertyNames) {
        
        id value = [object valueForKey:name];
        
        if ([value isKindOfClass:[NSArray class]]) {
            //it's an NSString
            NSMutableArray *array = [[NSMutableArray alloc] init];
            NSArray *elements = (NSArray *)value;
            for (id element in elements) {
                id value = [self classToDictionary:element];
                [array addObject:value];
            }
            [dic setValue:array forKey:name];
        } else {
            id value2 = [self classToDictionary:value];
            [dic setValue:value2 forKey:name];
        }
    }
    
    return dic;
}

@end
