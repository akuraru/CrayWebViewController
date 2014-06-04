//
// Created by akuraru on 2014/06/03.
// Copyright (c) 2014 azu. All rights reserved.
//

#import "CrayModalWebViewController.h"

@interface CrayTabWebViewController ()
@property(weak, nonatomic) IBOutlet UIWebView *contentWebView;
@end

@implementation CrayModalWebViewController {

}

+ (UINavigationController *)navigationController {
    return [[self storyboard] instantiateInitialViewController];
}

+ (instancetype)webViewController {
    return [[self storyboard] instantiateViewControllerWithIdentifier:NSStringFromClass(self)];
}

+ (UIStoryboard *)storyboard {
    return [UIStoryboard storyboardWithName:[self storyboardName] bundle:[NSBundle mainBundle]];
}

+ (NSString *)storyboardName {
    return @"CrayModalWebViewController";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:[self backButtonItemTitle] style:UIBarButtonItemStylePlain target:self action:@selector(back:)];
    self.navigationItem.leftBarButtonItem = item;
}

- (void)back:(id)sender {
    if ([self.contentWebView canGoBack]) {
        [self.contentWebView goBack];
    } else {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

- (NSString *)backButtonItemTitle {
    return NSLocalizedString(@"Back", nil);
}

@end