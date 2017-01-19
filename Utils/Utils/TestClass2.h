//
//  TestClass2.h
//  Utils
//
//  Created by Ryuji Kawaida on 22/11/16.
//  Copyright © 2016 Ryuji Kawaida. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TestClass2 : NSObject

@property (nonatomic) float longitude;
@property (nonatomic) float latitude;
@property (nonatomic, strong) NSString *country;

+ (id)initWithLongitude:(float)longitude setLatitude:(float)latitude setCountry:(NSString *)country;

@end
