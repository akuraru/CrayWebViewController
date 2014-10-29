//
// Created by azu on 2014/05/23.
//


#import "CrayStandaloneWebViewController.h"
#import "TUSafariActivity.h"


@implementation CrayStandaloneWebViewController {

}
+ (instancetype)webViewController {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"CrayStandaloneWebViewController" bundle:[NSBundle mainBundle]];
    return [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass(self)];
}

- (IBAction)handleActionButton:(id) sender {
    NSString *URLString = [self currentPageURL] ?: self.URL;
    if (URLString == nil) {
        return;
    }
    NSURL *URL = [NSURL URLWithString:URLString];
    TUSafariActivity *safariActivity = [[TUSafariActivity alloc] init];
    UIActivityViewController *activities = [[UIActivityViewController alloc] initWithActivityItems:@[URL] applicationActivities:@[safariActivity]];
    [self presentViewController:activities animated:YES completion:nil];
}

@end