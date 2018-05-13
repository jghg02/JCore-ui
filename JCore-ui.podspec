#
# Be sure to run `pod lib lint JCore-ui.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JCore-ui'
  s.version          = '0.2.4'
  s.summary          = 'This is an UI Lib for iOS'
  s.platform         = :ios, "10.0"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                      This is an UI Lib to iOS. This description is too large than summary 
                       DESC

  s.homepage         = 'https://github.com/jghg02/JCore-ui'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Josue Hernandez' => 'jghg.02@gmail.com' }
  s.source           = { :git => 'https://github.com/jghg02/JCore-ui.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/jghg02'

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'


  s.source_files = 'LibraryComponents/**/*'
  
# s.resources = 'LibraryComponents/Resources/*.xcassets'

  s.resource_bundles = {
    'JCore-ui' => ['LibraryComponents/Resources/**/*']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

s.subspec 'JCButton' do |jcbutton|
  jcbutton.source_files = 'LibraryComponents/UI/Buttons/**/*'
end


end
