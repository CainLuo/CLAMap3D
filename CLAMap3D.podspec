Pod::Spec.new do |s|

  s.name         = "CLAMap3D"
  s.version      = "1.0.0"
  s.summary      = "CLAMap3D for iOS."
  s.homepage     = "https://github.com/CainLuo/CLAMap3D"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "CainLuo" => "350116542@qq.com" }
  s.source       = { :git => "https://github.com/CainLuo/CLAMap3D.git", :tag => "#{s.version}" }
  s.source_files = "CLAMap3D", "CLAMap3D/**/*.{h,m}"
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.frameworks   = 'UIKit', 'Foundation'

  s.static_framework = true

  s.dependency "CLUIKit"
  s.dependency "AMap3DMap"

end
