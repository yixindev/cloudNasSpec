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
  s.source           = { :git => 'git@github.com:yixindev/YXSMB2.git',:tag => '0.0.2'}
  s.swift_version    = '5.0'

  s.source_files = 'YXSMB2/AMSMB2/**/*.swift'

  s.ios.deployment_target = '10.0'

  s.ios.vendored_libraries = "YXSMB2/libsmb2/lib/libsmb2-ios.a"

  s.frameworks = "Foundation"

  s.pod_target_xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_TARGET_SRCROOT)/YXSMB2/libsmb2/lib', 'SWIFT_INCLUDE_PATHS' => '${PODS_TARGET_SRCROOT}/YXSMB2/libsmb2/**','EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 arm64' }
    
  s.preserve_paths = "YXSMB2/libsmb2/include/**"

end
