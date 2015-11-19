//
//  DTTwoViewController.m
//  DTNavigationController
//
//  Created by silentcloud on 14-1-3.
//  Copyright (c) 2014年 silentcloud. All rights reserved.
//

#import "DTTwoViewController.h"
#import "DTThreeViewController.h"
@interface DTTwoViewController ()

@end

@implementation DTTwoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
    UINavigationBar *bar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
    
    UINavigationItem *item = [[UINavigationItem alloc] initWithTitle:@"Detail"];
    
    UIButton *leftButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 10, 60, 28)];
    [leftButton setTitle:@"Back" forState:UIControlStateNormal];
    [leftButton addTarget:self action:@selector(backAction) forControlEvents:UIControlEventTouchUpInside];
    [leftButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    item.leftBarButtonItem = leftItem;
    
    [bar pushNavigationItem:item animated:NO];
    
    [self.view addSubview:bar];
    
    
    UIButton *pushBtn = [[UIButton alloc] initWithFrame:CGRectMake(120, 200, 80, 40)];
    pushBtn.backgroundColor = [UIColor grayColor];
    [pushBtn setTitle:@"Push" forState:UIControlStateNormal];
    [pushBtn addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushBtn];
    
}

- (void)push:(id)sender {
    DTThreeViewController *viewcontroller = [[DTThreeViewController alloc ]init];
    [self.navigationController pushViewController:viewcontroller animated:YES];
}


- (void)backAction
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
