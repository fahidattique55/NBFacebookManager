Pod::Spec.new do |s|
  s.name             = 'NBFacebookManager'
  s.version          = '0.0.1'
  s.summary          = 'Facebook manager for social media login integration'

  s.description      = <<-DESC
Facebook manager for social media login integration.
                       DESC

  s.homepage         = 'https://github.com/fahidattique55/NBFacebookManager'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Fahid Attique' => 'fahidattique55@gmail.com' }
  s.source           = { :git => 'https://github.com/fahidattique55/NBFacebookManager.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'NBFacebookManager/Classes/**/*.{swift}'

  s.dependency  "FBSDKCoreKit"
  s.dependency  "FBSDKLoginKit"

end