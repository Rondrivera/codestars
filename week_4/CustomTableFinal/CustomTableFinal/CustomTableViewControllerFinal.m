//
//  CustomTableViewControllerFinal.m
//  CustomTableFinal
//
//  Created by Ronald Rivera on 8/25/15.
//  Copyright (c) 2015 Ron Rivera. All rights reserved.
//

#import "CustomTableViewControllerFinal.h"
#import "CustomTableViewCell.h"

@implementation CustomTableViewControllerFinal

{
    NSArray *recipeNames;
    NSArray *recipeImages;
    NSArray *prepTimes;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"recipes" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    recipeNames = [dict objectForKey:@"Name"];
    recipeImages = [dict objectForKey:@"Image"];
    prepTimes = [dict objectForKey:@"PrepTime"];


- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipeNames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath

{
    static NSString *cellIdentifier = @"Cell";
    CustomTableViewCell *cell = (CustomTableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.nameLabel.text = [recipeNames objectAtIndex:indexPath.row];
    cell.prepTimeLabel.text = [_prepTimes objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[recipeImages objectAtIndex:indexPath.row]];
    
    if (recipeChecked[indexPath.row]) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString* selectedRecipe = [recipeNames objectAtIndex:indexPath.row];
    UIAlertView *messageAlert= [[UIAlertView alloc]
    initWithTitle:@"Row Selected"
          message:selectedRecipe
         delegate:nil
cancelButtonTitle:@"OK"
otherButtonTitles: nil];
    [messageAlert show];
    
    recipeChecked[indexPath.row] = YES;
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
}


@end
