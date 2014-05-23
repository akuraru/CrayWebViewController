//
// Created by azu on 2013/06/28.
//


#import <Foundation/Foundation.h>
#import "NJKWebViewProgress.h"

@interface CrayTabWebViewController : UIViewController <UIWebViewDelegate, NJKWebViewProgressDelegate> {
}
// load to URL(initial URL)
// use setter or "User Defined Runtime Attributes"
@property(nonatomic, copy) NSString *URL;

// display page URL
- (NSString *)currentPageURL;

- (void)goToAddress:(NSString *) URL;
@end