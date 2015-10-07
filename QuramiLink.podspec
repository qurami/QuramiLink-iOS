#
# Be sure to run `pod lib lint QuramiLink.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "QuramiLink"
  s.version          = "0.1.1"
  s.summary          = "A pod to open office pages in Qurami directly from your app."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "This CocoaPod uses a convenient class to open an office page of Qurami directly from your app. It checks the availability of the app on the device and opens the office page. All you need to do is to provide a valid office link. We will update this pod to ensure that any integration with the Qurami iOS client will be seamlessly supported."

  s.homepage         = "https://github.com/qurami/QuramiLink-iOS"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Marco Musella" => "marco.musella@qurami.net" }
  s.source           = { :git => "https://github.com/qurami/QuramiLink-iOS.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/Qurami'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'QuramiLink' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
