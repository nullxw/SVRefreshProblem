//
//  DemoViewController.m
//  SVRefreshProblem
//
//  Created by Grzegorz Aksamit on 31.12.2013.
//  Copyright (c) 2013 example. All rights reserved.
//

#import "DemoViewController.h"
#import "UIScrollView+SVPullToRefresh.h"
#import "RefreshBarView.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

@synthesize tableView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [tableView addPullToRefreshWithActionHandler:^{
        NSLog(@"pulled to refresh");
    }];
    
    RefreshBarView* refreshBarView = [[[NSBundle mainBundle] loadNibNamed:@"RefreshBarView" owner:self options:nil] objectAtIndex:0];
    refreshBarView.bounds = CGRectMake(0, 0, 320, 60);
    
    [[tableView pullToRefreshView] setCustomView:refreshBarView forState:SVPullToRefreshStateLoading];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
