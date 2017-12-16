Pod::Spec.new do |s|
  s.name             = 'JSPhoneFormat'
  s.version          = '0.0.1'
  s.summary          = 'JSPhoneFormat'
  s.description      = <<-DESC
                      PhoneTextFormat 
                      DESC
  s.homepage         = 'https://github.com/JeaSungLEE/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jeasung.lee' => 'wotjdzz1@naver.com' }
  s.source           = { :git => 'https://github.com/JeaSungLEE/JSPhoneFormat.git', :tag => s.version.to_s }
  s.platform         = :ios, "9.0"
  s.framework = "UIKit"
  s.ios.deployment_target = '9.0'
  s.source_files = 'JSPhoneFormat/**/*.swift'
end