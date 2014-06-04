//
//  SecondViewController.m
//  CrayWebViewController
//
//  Created by azu on 2014/05/23.
//  Copyright (c) 2014年 azu. All rights reserved.
//

#import "SecondViewController.h"
#import "CrayStandaloneWebViewController.h"
#import "CrayModalWebViewController.h"

@interface SecondViewController ()
- (IBAction)handleStandaloneButton:(id)sender;
- (IBAction)handleModalButton:(id)sender;
@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *) nibNameOrNil bundle:(NSBundle *) nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleStandaloneButton:(id)sender {
    CrayStandaloneWebViewController *controller = [CrayStandaloneWebViewController webViewController];
    controller.URL = @"https://google.com";
    [self.navigationController pushViewController:controller animated:YES];
}
- (IBAction)handleModalButton:(id)sender {
    UINavigationController *navigation = [CrayModalWebViewController navigationController];
    CrayModalWebViewController *controller = (id)navigation.topViewController;
    controller.URL = @"https://google.com";
    [self presentViewController:navigation animated:YES completion:nil];
}
@end
