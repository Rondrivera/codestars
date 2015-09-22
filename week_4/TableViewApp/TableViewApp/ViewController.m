//
//  ViewController.m
//  TableViewApp
//
//  Created by Ronald Rivera on 8/24/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSMutableArray *_forbes;}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _forbes = [NSMutableArray arrayWithObjects:@"Floyd Mayweather", @"Manny Pacquiao", @"Cristiano Ronaldo", @"Lionel Messi",@"Roger Federer",@"Lebron James",@"Kevin Durant",@"Phil Mickelson",@"Tiger Woods",@"Kobe Bryant", @"Ben Rothelisberger",@"Rory McIlroy",@"Novak Djokovic",@"Zlatan Ibrahimovic",@"Lewis Hamilton",nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//DataSource Methods
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _forbes.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.textLabel.text = [_forbes objectAtIndex:indexPath.row];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    [_forbes removeObjectAtIndex:indexPath.row];
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:YES];
}
//Delegate Methods
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *sneaker = [_forbes objectAtIndex:indexPath.row];
    
    UIAlertView *alertMessage = [[UIAlertView alloc]initWithTitle:@"Forbes"
                                                          message:sneaker
                                                         delegate:nil
                                                cancelButtonTitle:@"Ok"
                                                otherButtonTitles:nil, nil];
    [alertMessage show];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end
