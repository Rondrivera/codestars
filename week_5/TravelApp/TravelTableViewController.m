//
//  ViewController.m
//  TravelApp
//
//  Created by Ronald Rivera on 9/5/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import "TravelTableViewController.h"
#import "TravelTableViewCell.h"
#import "DetailViewController.h"

@interface TravelTableViewController ()

@end

@implementation TravelTableViewController
{
    NSArray *travelNames;
    NSArray *travelImages;
    NSArray *cityPopulations;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    travelNames = @[@"Austin", @"Chicago", @"Denver", @"Miami", @"New York City", @"Orlando", @"Portland", @"San Diego", @"San Franciso", @"Seattle"];
    travelImages = @[@"austin.jpg", @"chicago.jpg", @"denver.jpg", @"miami.jpg", @"newyorkcity.jpg", @"orlando.jpg", @"portland", @"sandiego.jpg", @"sanfran.jpg", @"seattle.jpg"];
    cityPopulations = [NSArray arrayWithObjects:@"2,300,000", @"1,500,000", @"1,700,000", @"2,300,000", @"9,000,000", @"800,000", @"1,800,000", @"2,550,000", @"4,000,000", @"2,100,000", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [travelNames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    TravelTableViewCell *cell = (TravelTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.travelLabel.text = [travelNames objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[travelImages objectAtIndex:indexPath.row]];
    cell.cityPopulations.text = [cityPopulations objectAtIndex:indexPath.row];
    
    return cell;
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.identifier isEqualToString:@"showRecipeDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailViewController *destViewController = segue.destinationViewController;
        destViewController.travelName = [travelNames objectAtIndex:indexPath.row];
        
    }
    
}


@end
