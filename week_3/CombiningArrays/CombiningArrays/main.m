//
//  main.m
//  CombiningArrays
//
//  Created by Ronald Rivera on 8/24/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *array1 = @[@"Dog", @"Cat", @"Horse", @"Micro-Pig", @"Parrot"];
        NSArray *array2 = @[@"Tiger",@"Crocodile",@"Boar",@"Turkey", @"Chicken", @"Boa Constrictor"];
        
        NSArray *allArrays = [array1 arrayByAddingObjectsFromArray:array2];
        NSLog(@"%@",allArrays);
    }
    return 0;
}
