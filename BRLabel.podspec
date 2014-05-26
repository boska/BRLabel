Pod::Spec.new do |s|
  s.name         = "BRLabel"
  s.version      = "0.0.2"
  s.summary      = "BRLabel can show a shuffle animation when set text on it."
  s.homepage     = "http://github.com/boska/BRLabel"
  s.license      = { :type => 'MIT' }
  s.author             = { "Boska Lee" => "mr.boska@gmail.com" }
  s.source       = { :git => "https://github.com/boska/BRLabel.git", :tag => "0.0.2" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.platform     = :ios, '5.0'
  s.requires_arc = true
end
