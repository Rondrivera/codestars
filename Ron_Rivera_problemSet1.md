# Codestars - Problem Set 1

Please submit your completed problem set as an Xcode project for our review. The deadline to submit your answers to this problem set is **August 2nd at 11:59 PM**.

## Reading Assignment
Read through ["An Objective-C Primer"](http://courseware.codeschool.com.s3.amazonaws.com/try_ios/objective_c_primer.pdf) and complete the following coding exercises and writing assignment.

## Coding Exercises 

1) Using a for loop write a program that will capitalize all items in an array of strings. Your program should log the answer to the console so we can see the output when it runs. Use the following array for your example: @[@"computer", @"iphone", @"racecar", @"macbook", @"ipad"];

#import <Foundation/Foundation.h>

@implementation Test
-(void)printList {
NSArray *list = [NSArray arrayWithObjects:@"computer", @"iphone", @"racecar", @"macbook", @"ipad"];
//for loop here.
}

int main(int argc, const char * argv[]) {
void printList();
return 0;
}
@end

2) Using an if statement and a for loop write a program that will loop through an array and print only the even numbers. Your program should log the answer to the console so we can see the output when it runs. Use the following array for your example: @[@45, @22090909, @5698, @90433, @43431, @3454115, @43002, @109981, @545, @14345435, @1009282, @90909, @13233, @443535, @14782920, @49304, @434];


#import <Foundation/Foundation.h>

void printList() {
NSArray *list = @[@45, @22090909, @5698, @90433, @43431, @3454115, @43002, @109981, @545, @14345435, @1009282, @90909, @13233, @443535, @14782920, @49304, @434];
for (int i=0; i<list.count; i++) {
NSInteger x = [[list objectAtIndex:i] integerValue];
if (i % 2) {
NSLog(@"%lu is an odd number",(long)i );
} else {
NSLog(@"%lu is an even number", (long)i);
}
}

}

//Setter//
int main(int argc, const char * argv[ ]) {
printList();
return 0;
}



3) Write a function that will take an NSSArray as an input and prints the sum of the numbers in the array. Call this function in your homework submission so that when we compile your code it will run and print your answer. Use the following array for your example: @[100, 80, 85, 70, 99, 50, 45, 89, 34, 53, 25, 39]. 

#import < Foundation/Foundation.h>

@implementation test
-(void) printList() {
NSArray *list= [100,80,85,70,99,50,45,89,34,53,25,39];

Int main(int argc, const char * argv[ ])
{
for (int n = 0 , n < 100 , n ++ ) 100,80,85,70,99,50,45,89,34,53,25,39;
NSNumber *sum = [ numbers valueForKeyPath: @"@sum.self"];
NSLog(@"The sum of the array is %n".)
}
return 0;
}
@end



**Hint: You may want to use [NSLog](https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Miscellaneous/Foundation_Functions/#//apple_ref/c/func/NSLog) to print the answers to your questions. So, when we compile your code we should see the following output in the console: "Question 1: Your Answer, Question 2:  Your Answer, etc.**

**Additional Hints: For Question 1 you may need to make sure of the [uppercaseString](https://developer.apple.com/library/mac/documentation/Cocoa/Reference/Foundation/Classes/NSString_Class/#//apple_ref/occ/instp/NSString/uppercaseString) method. For Question 2 you may need to make use of the modulo operator.**


## Writing Assignment
Sign up for a free account at [Medium](https://medium.com/) and create a blog post that describes the basic principles of object-oriented programming. Your post should describe what classes are and how we can use them to organize their code. You should also explain the difference between class and instance methods and give examples of each. Include code samples and your examples should be written in Objective-C. Include a link to your blog post below.

https://medium.com/@ron.drivera/81516d9a8238

