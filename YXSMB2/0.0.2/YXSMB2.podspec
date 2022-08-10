#
# Be sure to run `pod lib lint NASSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YXSMB2'
  s.version          = '0.0.2'
  s.summary          = 'Swift framework to connect SMB2/3 shares'

  s.homepage         = 'https://github.com/amosavian/AMSMB2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors          = { 'yixinDeveloper' => 'yixinDeveloper@163.com' }
  s.source           = { :git => 'https://github.com/yixindev/YXSMB2.git',:tag => '0.0.2'}
  s.swift_version    = '5.0'

  s.source_files = 'YXSMB2.framework/**/*.h'

  s.ios.deployment_target = '10.0'

  s.public_header_files = 'YXSMB2.framework/**/*.h'

  s.vendored_frameworks = 'YXSMB2.framework'

  s.ios.vendored_libraries = "lib/libsmb2-ios.a"

  s.frameworks = "Foundation"

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
    
end
