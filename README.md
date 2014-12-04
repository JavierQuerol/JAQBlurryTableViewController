# JAQBlurryTableViewController


UITableViewController with a Blurry Header that unblurs when scrolling up, like Tweetbot.

[![](https://dl.dropboxusercontent.com/u/15831273/JAQBlurryDemo.gif)](https://dl.dropboxusercontent.com/u/15831273/JAQBlurryDemo.gif)

[![Version](https://img.shields.io/cocoapods/v/JAQBlurryTableViewController.svg?style=flat)](http://cocoadocs.org/docsets/JAQBlurryTableViewController)
[![License](https://img.shields.io/cocoapods/l/JAQBlurryTableViewController.svg?style=flat)](http://cocoadocs.org/docsets/JAQBlurryTableViewController)
[![Platform](https://img.shields.io/cocoapods/p/JAQBlurryTableViewController.svg?style=flat)](http://cocoadocs.org/docsets/JAQBlurryTableViewController)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

```objective-c
[self configureBannerWithImage:[UIImage imageNamed:@"cats"]];
```
or
```objective-c
[self configureBannerWithImage:[UIImage imageNamed:@"cats"] blurRadius:12 blurTintColor:[UIColor colorWithWhite:0 alpha:0.5] saturationFactor:1];
```

You can add as many views as you want to self.contentView, all the views holded by the contentView will change their alpha when scrolling.

## Requirements

OS 7 or higher

## Installation

JAQBlurryTableViewController is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "JAQBlurryTableViewController"

## Author

Javier Querol 

[![Twitter](http://img.shields.io/badge/contact-@javierquerol-blue.svg?style=flat)](http://twitter.com/javierquerol)

## License

JAQBlurryTableViewController is available under the MIT license. See the LICENSE file for more info.
