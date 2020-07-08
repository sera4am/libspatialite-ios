#
# Be sure to run `pod lib lint libspatialite.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'libspatialite'
  s.version          = '0.1.0'
  s.summary          = 'A library libSpatialite for iOS with CocoaPods and Charthage (ARM64 with bitcode)'
  s.platform         = :ios
  s.static_framework = true
# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A library for using libspatialite on iOS.
Available in CocoaPods or Carthage.

Since the decent libspatialite library did not exist for a while, I will publish the CococaPods library that builds libspatialite.
Im rook to Podspec file, so maybe there is something wrong.
I would like to accept your cooperation.
                       DESC

  s.homepage         = 'https://github.com/sera4am/libspatialite'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MPL2.0', :file => 'LICENSE' }
  s.author           = { 'sera4am' => 'sera4am' }
  s.source           = { :git => 'https://github.com/sera4am/libspatialite.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/ryamcat'

  s.ios.deployment_target = '8.0'

  s.source_files = 'libspatialite/Classes/**/*'
  s.public_header_files = 'libspatialite/include/**/*.h'

  s.prepare_command = <<-CMD
  pwd
  chmod u+x build.sh
  sh ./build.sh
  CMD
  
  s.libraries = 'iconv', 'charset.1.0.0', 'xml2.2', 'c++', 'z'
  s.vendored_libraries = 'lib/arm64/libproj.a', 'lib/arm64/libgeos.a', 'lib/arm64/libgeos_c.a', 'lib/arm64/libspatialite.a'
  
end
