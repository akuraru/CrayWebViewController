//
// Created by akuraru on 2014/06/03.
// Copyright (c) 2014 azu. All rights reserved.
//

#import "CrayAllInOneBackWebViewController.h"

@interface CrayModalWebViewController : CrayAllInOneBackWebViewController
+ (void)showFromViewController:(id)viewController URL:(NSString *)URL;
+ (UINavigationController *)navigationController;
@end