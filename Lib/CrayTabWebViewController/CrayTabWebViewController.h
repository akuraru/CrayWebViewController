//
// Created by azu on 2013/06/28.
//


#import <Foundation/Foundation.h>
#import "NJKWebViewProgress.h"

@interface CrayTabWebViewController : UIViewController <UIWebViewDelegate, NJKWebViewProgressDelegate> {
}
// load to URL
// use setter or "User Defined Runtime Attributes"
@property(nonatomic, copy) NSString *URL;

- (void)goToAddress:(NSString *) URL;
@end