//
// Created by azu on 2014/06/04.
//


#import "CrayBundleSupport.h"


@implementation CrayBundleSupport {

}

+ (NSString *)localizedStringForKey:(NSString *) key withDefault:(NSString *) defaultString {
    static NSBundle *crayLocalizeBundle = nil;
    if (!crayLocalizeBundle) {
        NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"CrayWebViewControlleryLocalized" ofType:@"bundle"];
        crayLocalizeBundle = [NSBundle bundleWithPath:bundlePath];

        NSString *language = NSLocale.preferredLanguages.count
                             ? NSLocale.preferredLanguages.firstObject : @"en";
        if (![crayLocalizeBundle.localizations containsObject:language]) {
            language = [language componentsSeparatedByString:@"-"].firstObject;
        }
        if ([crayLocalizeBundle.localizations containsObject:language]) {
            bundlePath = [crayLocalizeBundle pathForResource:language ofType:@"lproj"];
        }

        crayLocalizeBundle = [NSBundle bundleWithPath:bundlePath] ?: NSBundle.mainBundle;
    }

    defaultString = [crayLocalizeBundle localizedStringForKey:key value:defaultString table:nil];
    return [NSBundle.mainBundle localizedStringForKey:key value:defaultString table:nil];
}
@end