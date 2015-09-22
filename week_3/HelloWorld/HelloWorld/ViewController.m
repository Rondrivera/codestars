//
//  ViewController.m
//  HelloWorld
//
//  Created by Ronald Rivera on 8/20/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)showMessage
{
    UIAlertController *helloWorldAlert = [UIAlertController alertControllerWithTitle:@"My first app" message:@"Hello World!" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okayAction = [UIAlertAction actionWithTitle: @"Ok" style:UIAlertActionStyleDefault handler:nil];
    
    [helloWorldAlert addAction:okayAction];
    
    
    
    [self presentViewController:helloWorldAlert animated:YES completion:nil];
    
}
@end
