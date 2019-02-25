Pod::Spec.new do |s|
  s.name         = "OpenCV"
  s.version      = "4.0.1"
  s.summary      = "OpenCV (Computer Vision) for iOS."
  s.homepage      = "https://opencv.org/."

  s.license      = 'BSD'
  s.author       = 'https://github.com/opencv/opencv/graphs/contributors'

  s.source       = { :http => "https://github.com/oursky/opencv/releases/download/4.0.1/opencv2.framework.zip" }
  s.platform     = :ios

  s.vendored_frameworks = 'opencv2.framework'
  s.header_mappings_dir = 'opencv2.framework/Versions/A/Headers'
  s.frameworks = 'AssetsLibrary', 'AVFoundation', 'CoreGraphics', 'CoreMedia', 'CoreVideo', 'Foundation', 'QuartzCore', 'UIKit'
  s.libraries = 'c++'
  s.requires_arc = false
end
