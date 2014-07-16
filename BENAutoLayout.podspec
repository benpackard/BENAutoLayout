Pod::Spec.new do |s|

  s.name         = "BENAutoLayout"
  s.version      = "0.1.7"
  s.summary      = "UIView category methods for adding autolayout constraints."
  s.description  = "Some convenient UIView category methods for quickly adding autolayout constraints."
  s.homepage     = "https://github.com/benpackard/BENAutoLayout"
  s.license      = 'MIT'
  s.author       = { "Ben Packard" => "ben@benpackard.org" }
  s.platform     = :ios, 6.0
  s.source       = { :git => "https://github.com/benpackard/BENAutoLayout.git", :tag => "0.1.7" }
  s.source_files  = '*.{h,m}'
  s.requires_arc = true
end

