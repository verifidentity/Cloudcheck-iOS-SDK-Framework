#
# Be sure to run `pod lib lint CloudcheckSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CloudcheckSDK'
  s.version          = '1.2.5'
  s.summary          = 'Provides a convenient interface for running the Cloudcheck verification process on iOS'

  s.description      = <<-DESC
Provides a convenient View Controller for running a user through the cloudcheck process.
This SDK also provides a simple interface for the API if you want to build your own UI.
                       DESC

  s.homepage         = 'https://github.com/verifidentity/Cloudcheck-iOS-SDK-Framework'
  s.author           = { 'Verifidentity' => 'support@verifidentity.com' }
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.source           = { :git => 'https://github.com/verifidentity/Cloudcheck-iOS-SDK-Framework.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.vendored_frameworks = 'CloudcheckSDK.framework'

end
