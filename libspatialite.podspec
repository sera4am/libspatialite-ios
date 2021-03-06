#
# Be sure to run `pod lib lint libspatialite.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.prepare_command = <<-CMD
  pwd
  chmod u+x build.sh
  sh ./build.sh
  CMD

    
  s.name             = 'libspatialite'
  s.version          = '0.1.5'
  s.summary          = 'A short description of libspatialite.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/sera4am/libspatialite'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sera4am' => 'takeo@kazama.biz' }
  s.source           = { :git => 'https://github.com/sera4am/libspatialite.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'include/**/*.h'
  s.header_mappings_dir = 'include'
  s.ios.libraries = 'iconv', 'charset.1.0.0', 'xml2.2', 'c++', 'z'
  s.vendored_libraries = 'lib/arm64/libproj.a', 'lib/arm64/libgeos.a', 'lib/arm64/libgeos_c.a', 'lib/arm64/libspatialite.a'
  # s.resource_bundles = {
  #   'libspatialite' => ['libspatialite/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
