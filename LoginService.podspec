#
# Be sure to run `pod lib lint LoginService.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LoginService'
  s.version          = '0.0.1'
  s.summary          = 'A short description of LoginService.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Kalanhall@163.com/LoginService'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Kalanhall@163.com' => 'wujm002@galanz.com' }
  s.source           = { :git => 'https://github.com/Kalanhall@163.com/LoginService.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'LoginService/Classes/**/*'
  
  s.resource_bundles = {
    'LoginService' => ['LoginService/Assets/*']
  }

  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Extensions', '~> 1.0.0'
  s.dependency 'KLProgressHUD', '~> 1.0.0'
  s.dependency 'SnapKit'
  s.dependency 'Alamofire'
  s.dependency 'KLNavigationController'
  s.dependency 'IQKeyboardManagerSwift'
  
end
