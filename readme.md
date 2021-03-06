# CrayWebViewController

Purpose: Easy to use commonplace UIWebViewController

![img](http://gyazo.com/88c8b0a4d606815f813d7728b66a0e91.gif)

* Easy to use ViewController which contain WebView.
    * Push , Modal, Tab
* Support iPad

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

### CrayAllInOneBackWebViewController

It's CrayStandaloneWebViewController + hook back button.

``` objc
CrayAllInOneBackWebViewController *controller = [CrayAllInOneBackWebViewController webViewController];
controller.URL = @"https://google.com";
[self.navigationController pushViewController:controller animated:YES];
```

*Scenario*

1. Load URL*1
2. Click URL
3. Press BackButton -> WebView goes to back*1
4. Press BackButton -> `[self.navigationController popViewControllerAnimated:YES];`

### Modal WebViewController

Provide simple Modal WebViewController

```objc
NSString *url = @"https://google.com";
[CrayModalWebViewController showFromViewController:self URL:url];
```


## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

MIT
