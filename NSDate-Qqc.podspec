Pod::Spec.new do |s|

  s.license      = "MIT"
  s.author       = { "qqc" => "20599378@qq.com" }
  s.platform     = :ios, "8.0"
  s.requires_arc  = true

  s.name         = "NSDate-Qqc"
  s.version      = "1.0.12"
  s.summary      = "NSDate-Qqc"
  s.homepage     = "https://github.com/xukiki/NSDate-Qqc"
  s.source       = { :git => "https://github.com/xukiki/NSDate-Qqc.git", :tag => "#{s.version}" }
  
  s.source_files  = ["NSDate-Qqc/*.{h,m}"]

end
