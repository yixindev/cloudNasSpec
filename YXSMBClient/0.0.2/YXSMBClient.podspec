#
# Be sure to run `pod lib lint NASSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YXSMBClient'
  s.version          = '0.0.2'
  s.summary          = 'yixin smb client'

  s.homepage         = 'https://com.yixin.im'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors          = { 'yixinDeveloper' => 'yixinDeveloper@163.com' }
  s.source           = { :git => 'git@github.com:yixindev/YXSMBClient.git',:tag => '0.0.2'}
  s.swift_version    = '5.0'

  s.ios.deployment_target = '10.0'

  s.source_files = 'YXSMBClient.framework/**/*.h'

  s.dependency 'YXSMB2'

  s.vendored_frameworks = 'YXSMBClient.framework'

  s.frameworks = "Foundation"
  
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
    
end
