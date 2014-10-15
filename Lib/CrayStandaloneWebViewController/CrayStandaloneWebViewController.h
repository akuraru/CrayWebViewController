//
// Created by azu on 2014/05/23.
//


#import "CrayTabWebViewController.h"


@interface CrayStandaloneWebViewController : CrayTabWebViewController
// Open Menu from sender
- (IBAction)handleActionButton:(id) sender;

+ (instancetype)webViewController;
@end