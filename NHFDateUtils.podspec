Pod::Spec.new do |s|
  s.name             = "NHFDateUtils"
  s.version          = "0.0.1"
  s.summary          = "有关所以日期时间的操作以及各种转换功能"
  s.homepage         = "https://github.com/nhfc99/NHFDateUtils"
  s.license          = 'MIT'
  s.author           = {"牛宏飞"=>"nhfc99@163.com"}  
  s.source           = {:git => "https://github.com/nhfc99/NHFDateUtils.git",:tag => s.version.to_s}

  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = true
  s.source_files = 'NSDate+Utils/*.{h,m}'
  s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'

end
