#JAQBlurryTableViewController

UITableViewController with a Blurry Header that unblurs when scrolling up.

[![](https://dl.dropboxusercontent.com/u/15831273/JAQBlurryDemo.gif)](https://dl.dropboxusercontent.com/u/15831273/JAQBlurryDemo.gif)

## Usage

[CocoaPods](http://cocoapods.org) is the recommended way to add JAQBlurryTableViewController to your project.

1. Add a pod entry for JAQBlurryTableViewController to your Podfile `pod 'JAQBlurryTableViewController', '~> 0.0.1'`
2. Install the pod(s) by running `pod install`.
3. Include JAQBlurryTableViewController wherever you need it with `#import "JAQBlurryTableViewController.h"`.
4. Instead of subclassing UITableViewController, subclass JAQBlurryTableViewController.
5. On the viewDidLoad:

```
[self configureBannerWithImage:[UIImage imageNamed:@"cats"] height:200];
```
or
```
[self configureBannerWithImage:[UIImage imageNamed:@"cats"] height:200 blurRadius:12 blurTintColor:[UIColor colorWithWhite:0 alpha:0.5] saturationFactor:1];
```

You can add as many views as you want to ```self.contentView```, all the views holded by contentView will change their alpha when scrolling.

## Feedback

[@javierquerol](https://twitter.com/javierquerol)

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).


