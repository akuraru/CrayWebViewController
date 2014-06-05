//
// Created by azu on 2014/06/05.
//


#import "CrayAllInOneBackWebViewController.h"
#import "CrayBundleSupport.h"


@interface CrayAllInOneBackWebViewController ()
@property(weak, nonatomic) IBOutlet UIWebView *contentWebView;
@end

@implementation CrayAllInOneBackWebViewController {

}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithTitle:[self backButtonItemTitle] style:UIBarButtonItemStylePlain target:self action:@selector(handleBackButton:)];
    self.navigationItem.leftBarButtonItem = item;
}

- (void)handleBackButton:(id)sender {
    if ([self.contentWebView canGoBack]) {
        [self.contentWebView goBack];
    } else {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (NSString *)backButtonItemTitle {
    return [CrayBundleSupport localizedStringForKey:@"CrayWebViewControllerBack" withDefault:@"Back"];
}
@end