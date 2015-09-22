//
//  main.m
//  capArrayFinal
//
//  Created by Ronald Rivera on 8/20/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import <Foundation/Foundation.h>

NSArray *capStrings(NSArray* arr);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *arr = @[@"Neptune",@"Mercury", @"Uranus"];
        NSLog(@"%@", capStrings(arr));
    }
    return 0;
}
NSArray *capStrings(NSArray* arr){
    NSMutableArray *capitalArray = [[NSMutableArray alloc]init];
    NSString *capString;
    
    for(NSString *str in arr){
        capString = [str uppercaseString];
        [capitalArray addObject:capString];
}
    return capitalArray;
    }
