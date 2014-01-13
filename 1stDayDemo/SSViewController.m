//
//  SSViewController.m
//  1stDayDemo
//
//  Created by Stevenson on 1/13/14.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import "SSViewController.h"

@interface SSViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *theTableView;
@property (strong, nonatomic) NSArray *studentArray;

@end

@implementation SSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    NSString *student1 = [NSString stringWithFormat:@"Brad"];
    NSString *student2 = [NSString stringWithFormat:@"Clem"];
    NSString *student3 = [NSString stringWithFormat:@"Billy Bob"];
    
    self.studentArray = [NSArray arrayWithObjects:student1,student2,student3,nil];
    
    self.theTableView.dataSource = self;
    self.theTableView.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.studentArray count];
}


-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellIdentifier = @"theCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    cell.textLabel.text = [self.studentArray objectAtIndex:indexPath.row];
    
    return cell;
}

@end
