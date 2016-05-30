#
# Be sure to run `pod lib lint swiftly-battle-net.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'swiftly-battle-net'
  s.version          = '0.1.1'
  s.summary          = 'Swift library to communicate with Blizzard\'s Battle.net API.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This pod allows one to communicate with Blizzard's Battle.net API. Through calling the methods provided by this pod, one will be able to interact with the various methods Blizzard's Battle.net API currently supports.
                       DESC

  s.homepage         = 'https://github.com/JeffScaturro/swiftly-battle-net'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jeff Scaturro' => 'jeffrey.scaturro@gmail.com' }
  s.source           = { :git => 'https://github.com/JeffScaturro/swiftly-battle-net.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'swiftly-battle-net/Classes/**/*'

  # s.resource_bundles = {
  #   'swiftly-battle-net' => ['swiftly-battle-net/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Alamofire', '~> 3.4'
end
