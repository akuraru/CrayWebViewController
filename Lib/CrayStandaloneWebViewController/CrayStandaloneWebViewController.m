//
// Created by azu on 2014/05/23.
//


#import "CrayStandaloneWebViewController.h"
#import "TUSafariActivity.h"


@implementation CrayStandaloneWebViewController {

}
+ (instancetype)webViewController {
    return [[self storyboard] instantiateViewControllerWithIdentifier:NSStringFromClass(self)];
}

+ (UIStoryboard *)storyboard {
    return [UIStoryboard storyboardWithName:NSStringFromClass(self) bundle:[NSBundle mainBundle]];
}

- (IBAction)handleActionButton:(id) sender {
    NSString *URLString = [self currentPageURL] ?: self.URL;
    if (URLString == nil) {
        return;
    }
    NSURL *URL = [NSURL URLWithString:URLString];
    TUSafariActivity *safariActivity = [[TUSafariActivity alloc] init];
    UIActivityViewController *activities = [[UIActivityViewController alloc] initWithActivityItems:@[URL] applicationActivities:@[safariActivity]];
    if ([activities respondsToSelector:@selector(popoverPresentationController)]) {
        activities.popoverPresentationController.barButtonItem = sender;
    }
    [self presentViewController:activities animated:YES completion:nil];
}

@end