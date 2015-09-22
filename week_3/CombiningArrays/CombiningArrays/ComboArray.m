//
//  ComboArray.m
//  CombiningArrays
//
//  Created by Ronald Rivera on 8/24/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import "ComboArray.h"

@implementation ComboArray
-(NSArray*) addOneArray:(NSArray*)array1 toAnother:(NSArray*)array2;{
NSMutableArray *array3 = [[NSMutableArray alloc]init];

[array3 addObjectsFromArray:array1];
[array3 addObjectsFromArray:array2];

return array3;
}
@end
