//
// Created by akuraru on 2014/06/03.
// Copyright (c) 2014 azu. All rights reserved.
//

#import "CrayModalWebViewController.h"
#import "CrayBundleSupport.h"

@interface CrayTabWebViewController ()
@property(weak, nonatomic) IBOutlet UIWebView *contentWebView;
+ (UIStoryboard *)storyboard;
@end

@implementation CrayModalWebViewController {

}

+ (void)showFromViewController:(id)viewController URL:(NSString *)URL {
    UINavigationController *navigation = [CrayModalWebViewController navigationController];
    CrayModalWebViewController *controller = (id)navigation.topViewController;
    controller.URL = URL;
    [viewController presentViewController:navigation animated:YES completion:nil];
}

+ (UINavigationController *)navigationController {
    return [[self storyboard] instantiateInitialViewController];
}

- (void)handleBackButton:(id)sender {
    if ([self.contentWebView canGoBack]) {
        [self.contentWebView goBack];
    } else {
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}
@end
