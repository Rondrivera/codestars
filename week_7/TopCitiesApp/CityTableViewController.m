//
//  CityTableViewController.m
//  TopCitiesApp
//
//  Created by Ronald Rivera on 9/30/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import "CityTableViewController.h"
#import "CityTableViewCell.h"
#import "DetailViewController.h"
#import "City.h"
#import "AboutViewController.h"

@interface CityTableViewController ()

@end

@implementation CityTableViewController
{
    NSArray *_cities;
    NSArray *_searchResults;
    NSArray *_citiWikis;
    UISearchController *searchController1;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
   
//    UISearchController *searchController = [[UISearchController alloc] initWithSearchResultsController:nil];
//    searchController.searchResultsUpdater = self;
//    self.tableView.tableHeaderView= searchController.searchBar;
//    self.definesPresentationContext = YES;
    
    //Initialize the cities array
    City *city1 = [City new];
    city1.name = @"Austin";
    city1.population = @"885,000";
    city1.image = @"austin.jpg";
    
    
    City *city2 = [City new];
    city2.name = @"Chicago";
    city2.population = @"2,719,000";
    city2.image = @"chicago.jpg";
    
    
    City *city3 = [City new];
    city3.name = @"Denver";
    city3.population = @"650,000";
    city3.image = @"denver.jpg";

    
    City *city4 = [City new];
    city4.name = @"Miami";
    city4.population = @"418,000";
    city4.image = @"miami.jpg";

    
    City *city5 = [City new];
    city5.name = @"New York City";
    city5.population = @"9,000,000";
    city5.image = @"newyorkcity.jpg";

    
    City *city6 = [City new];
    city6.name = @"Orlando";
    city6.population = @"256,000";
    city6.image = @"orlando.jpg";
    
    
    City *city7 = [City new];
    city7.name = @"Portland";
    city7.population = @"650,000";
    city7.image = @"portland.jpg";
    
    
    City *city8 = [City new];
    city8.name = @"San Diego";
    city8.population = @"1,356,000";
    city8.image = @"sandiego.jpg";

    
    City *city9 = [City new];
    city9.name = @"San Francisco";
    city9.population = @"838,000";
    city9.image = @"sanfran.jpg";
    
    
    City *city10 = [City new];
    city10.name = @"Seattle";
    city10.population = @"653,000";
    city10.image = @"seattle.jpg";

    
    _cities = [NSArray arrayWithObjects:city1, city2, city3, city4, city5,city6, city7, city8, city9, city10, nil];

    _citiWikis = @[@"http://www.tripadvisor.com/Attractions-g30196-Activities-Austin_Texas.html",
                   @"http://www.tripadvisor.com/Attractions-g35805-Activities-Chicago_Illinois.html",
                   @"http://www.tripadvisor.com/Attractions-g33388-Activities-Denver_Colorado.html",
                   @"http://www.tripadvisor.com/Attractions-g34438-Activities-Miami_Florida.html",
                   @"http://www.tripadvisor.com/Attractions-g60763-Activities-New_York_City_New_York.html",
                   @"http://www.tripadvisor.com/Attractions-g34515-Activities-Orlando_Florida.html",
                   @"http://www.tripadvisor.com/Attractions-g52024-Activities-Portland_Oregon.html",
                   @"http://www.tripadvisor.com/Attractions-g60750-Activities-San_Diego_California.html",
                   @"http://www.tripadvisor.com/Attractions-g60713-Activities-San_Francisco_California.html",
                @"http://www.tripadvisor.com/Attractions-g60878-Activities-Seattle_Washington.html"];

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(searchController1.active) {
        return _searchResults.count;
    } else {
        return [_cities count];
    }
}
-(UITableViewCell *)tableView: (UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath*)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    CityTableViewCell *cell = (CityTableViewCell*)
    [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    
    City *city;
    if (searchController1.active) {
        city = [_searchResults objectAtIndex:indexPath.row];
    } else {
        city = [_cities objectAtIndex:indexPath.row];
    }
    
    
    if (cell == nil) {
        cell = [[CityTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.cityLabel.text = city.name;
    cell.thumbnailImageView.image = [UIImage imageNamed:city.image];
//    cell.populationLabel.text = city.population;
    
    return cell;
}

-(void)filterContentForSearchText:(NSString *)searchText {
    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"name contains[c]%@", searchText];
    _searchResults = [_cities filteredArrayUsingPredicate:resultPredicate];
    searchController1.searchResultsUpdater = self;
    searchController1.dimsBackgroundDuringPresentation = NO;
}
-(void)updateSearchResultsForSearchController:(UISearchController *)searchController {
    [self filterContentForSearchText:searchController.searchBar.text];
    [self.tableView reloadData];
    
}

-(void)tableView:(UITableView*)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath
{
//    NSString *selectedCity = [_cities objectAtIndex:indexPath.row];
//    UIAlertView *messageAlert = [[UIAlertView alloc]
//                                 initWithTitle:@"Row Selected"
//                                 message:selectedCity
//                                 delegate:nil
//                                 cancelButtonTitle:@"OK"
//                                 otherButtonTitles:nil];
//    [messageAlert show];
//    
////    cityChecked[indexPath.row] = YES;
////
//    
//    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//    cell.accessoryType = UITableViewCellAccessoryCheckmark;
//    [tableView deselectRowAtIndexPath: indexPath animated:YES];
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showCityDetail"]) {
        
        AboutViewController *aboutViewController = [[AboutViewController alloc] init];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        aboutViewController = segue.destinationViewController;
        
        aboutViewController.URLString = [_citiWikis objectAtIndex:indexPath.row];
        NSLog(@"%@",aboutViewController.URLString);

                
//        destViewController.city = [cities objectAtIndex:indexPath.row];
        
//        City *city;
//        if (searchController.active) {
//            city = [searchResults objectAtIndex:indexPath.row];
//        } else {
//            city = [cities objectAtIndex:indexPath.row];
//        }
//        destViewController.city = city;
    }
}


    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
