# CrayWebViewController

Purpose: Easy to use commonplace UIWebViewController

![img](http://gyazo.com/88c8b0a4d606815f813d7728b66a0e91.gif)

## Installation

``` sh
pod 'CrayWebViewController'
```

## Usage

See Example.

``` sh
pod try CrayWebViewController
```

### Basic WebViewController(needed implement)

1. Apply `CrayTabWebViewController` to UIViewController class.
2. connect Outlet to WebView and delegate.
3. set `URL` property or call `- (void)goToAddress:(NSString *) URL;`

### Standalone WebViewController

``` objc
CrayStandaloneWebViewController *controller = [CrayStandaloneWebViewController webViewController];
controller.URL = @"https://google.com";
[self.navigationController pushViewController:controller animated:YES];
```

![img](http://monosnap.com/image/gQ0RhyXbTbVTBAldPPOTHMmJaXqmrg.png)

![action](http://monosnap.com/image/ADdPQeMeNgL3T2aj7PKnVrGXkxVZyF.png)

### Modal WebViewController

Provide simple Modal WebViewController

```objc
UINavigationController *navigation = [CrayModalWebViewController navigationController];
CrayModalWebViewController *controller = (id)navigation.topViewController;
controller.URL = @"https://google.com";
[self presentViewController:navigation animated:YES completion:nil];
```


## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

MIT