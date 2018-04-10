#
# Be sure to run `pod lib lint CSMediator.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CSMediator'
  s.version          = '0.1.0'
  s.summary          = 'A short description of CSMediator.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/dormitory219/CSMediator'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dormitory219' => '289067005@qq.com' }
  s.source           = { :git => 'https://github.com/dormitory219/CSMediator.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CSMediator/Classes/**/*'
  
  
  s.subspec 'Router' do |router|
      router.source_files = 'CSMediator/Classes/*.{h,m}'
      #   router.public_header_files = 'CSMediator/Classes/Router/*.h'
  end
  
  s.subspec 'Service' do |service|
      service.source_files = 'CSMediator/Classes/Service/*.{h,m}'
      #   service.public_header_files = 'CSMediator/Classes/Service/*.h'
  end
  
  # s.resource_bundles = {
  #   'CSMediator' => ['CSMediator/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
