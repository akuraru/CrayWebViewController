//
// Created by azu on 2014/05/23.
//


#import "CrayStandaloneWebViewController.h"
#import "TUSafariActivity.h"


@interface CrayStandaloneWebViewController ()
- (IBAction)handleActionButton:(id) sender;
@end

@implementation CrayStandaloneWebViewController {

}
- (IBAction)handleActionButton:(id) sender {
    if (self.URL == nil) {
        return;
    }
    NSURL *URL = [NSURL URLWithString:self.URL];
    TUSafariActivity *safariActivity = [[TUSafariActivity alloc] init];
    UIActivityViewController *activities = [[UIActivityViewController alloc] initWithActivityItems:@[URL] applicationActivities:@[safariActivity]];
    [self presentViewController:activities animated:YES completion:nil];
}

+ (instancetype)webViewController {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"CrayStandaloneWebViewController" bundle:[NSBundle mainBundle]];
    return [storyboard instantiateViewControllerWithIdentifier:NSStringFromClass(self)];
}

@end