#
# Be sure to run `pod lib lint JAQBlurryTableViewController.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "JAQBlurryTableViewController"
  s.version          = "1.0.0"
  s.summary          = "UITableViewController with a Blurry Header that unblurs when scrolling up, like Tweetbot."
  s.description      = <<-DESC
                       UITableViewController with a Blurry Header that unblurs when scrolling up, like Tweetbot.
                       DESC
  s.homepage         = "https://github.com/javierquerol/JAQBlurryTableViewController"
  s.screenshots   	 = "https://dl.dropboxusercontent.com/u/15831273/JAQBlurryDemo.gif"
  s.license          = 'MIT'
  s.author           = { "Javier Querol" => "querol.javi@gmail.com" }
  s.source           = { :git => "https://github.com/javierquerol/JAQBlurryTableViewController.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/javierquerol'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*.*'
  s.resource_bundles = {
    'JAQBlurryTableViewController' => ['Pod/Assets/*.png']
  }
end
