//
//  ViewController.m
//  Utils
//
//  Created by Ryuji Kawaida on 22/11/16.
//  Copyright © 2016 Ryuji Kawaida. All rights reserved.
//

#import "ViewController.h"
#import "TestClass.h"
#import "TestClass2.h"
#import "LibDictionary.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
 
    TestClass2 *test1 = [TestClass2 initWithLongitude:200034.5 setLatitude:300123.9 setCountry:@"JAPAN"];
    TestClass2 *test2 = [TestClass2 initWithLongitude:200034.5 setLatitude:300123.9 setCountry:@"ARGENTINA"];
    TestClass2 *test3 = [TestClass2 initWithLongitude:200034.5 setLatitude:300123.9 setCountry:@"BOLIVIA"];
    
    NSMutableArray *dates1 = [[NSMutableArray alloc] init];
    [dates1 addObject:test1];
    [dates1 addObject:test2];
    [dates1 addObject:test3];
    
    NSMutableArray *dates2 = [[NSMutableArray alloc] init];
    [dates2 addObject:@"2014"];
    [dates2 addObject:@"2015"];
    [dates2 addObject:@"2016"];
    
    NSMutableArray *dates3 = [[NSMutableArray alloc] init];
    [dates3 addObject:[NSNumber numberWithInt:13]];
    [dates3 addObject:[NSNumber numberWithInt:14]];
    [dates3 addObject:[NSNumber numberWithInt:15]];
    
    NSMutableArray *dates = [[NSMutableArray alloc] init];
    [dates addObject:[TestClass initWithName:@"Lucas" setAge:18 setHeight:167.4 setIsPerson:YES setDates:dates1 setTest:test1]];
    [dates addObject:[TestClass initWithName:@"Maria" setAge:22 setHeight:150 setIsPerson:YES setDates:dates2 setTest:test2]];
    [dates addObject:[TestClass initWithName:@"Pedro" setAge:30 setHeight:170 setIsPerson:NO setDates:dates3 setTest:test3]];
        
    TestClass *test = [[TestClass alloc] init];
    [test setName:@"Luis"];
    [test setAge:29];
    [test setHeight:170.5];
    [test setIsPerson:YES];
    [test setDates:dates];
    
    NSDictionary *dic = [LibDictionary classToDictionary:test];
    
    NSData *data = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:nil];
    NSString *json = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"%@", json);
    
    NSDictionary *dic2 = [LibDictionary classToDictionary:[NSArray arrayWithObjects:dates1, dates2, dates3, @"55", nil]];
    
    NSData *data2 = [NSJSONSerialization dataWithJSONObject:dic2 options:NSJSONWritingPrettyPrinted error:nil];
    NSString *json2 = [[NSString alloc] initWithData:data2 encoding:NSUTF8StringEncoding];
    NSLog(@"%@", json2);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
