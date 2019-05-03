Pod::Spec.new do |s|
  s.name     = 'GPUImage3'
  s.version  = '0.1.1'
  s.license  = 'BSD'
  s.summary  = 'An open source iOS framework for GPU-based image and video processing.'
  s.homepage = 'https://github.com/BradLarson/GPUImage3'
  s.author   = { 'Brad Larson' => 'contact@sunsetlakesoftware.com' }

  s.source   = { :git => 'https://github.com/dannydaddy3/GPUImage3' }

  s.source_files = 'framework/Source/**/*.{swift,metal}'
  s.resources = 'framework/Source/Operations/Shaders/*.{fsh}', '*.metallib'
  s.requires_arc = true
  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES', 'OTHER_SWIFT_FLAGS' => "$(inherited) -DGLES"}
  
  s.ios.deployment_target = '10.3'
  s.ios.exclude_files = 'framework/Source/Mac', 'framework/Source/Linux'
  s.frameworks   = ['Metal', 'QuartzCore', 'AVFoundation']

end