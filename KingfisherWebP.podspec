Pod::Spec.new do |s|
  s.name             = 'KingfisherWebP'
  s.version          = '1.3.0'
  s.swift_version    = '5.0'
  s.summary          = 'A Kingfisher extension helping you process webp format'

  s.description      = <<-DESC
KingfisherWebP is an extension of the popular library [Kingfisher](https://github.com/onevcat/Kingfisher), providing a ImageProcessor and CacheSerializer for you to conveniently handle the WebP format.
                       DESC

  s.homepage         = 'https://github.com/yeatse/KingfisherWebP'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Yang Chao' => 'iyeatse@gmail.com' }
  s.source           = { :git => 'https://github.com/CocoapodsModifiedBranch/KingfisherWithWebP.git' }
  s.social_media_url = 'https://twitter.com/yeatse'

  s.ios.deployment_target = '10.0'
  s.tvos.deployment_target = '10.0'
  s.watchos.deployment_target = '3.0'
  s.osx.deployment_target = '10.12'

  s.frameworks = "Accelerate"
  s.vendored_frameworks = 'libwebp/*.framework'

  s.source_files = 'Sources/**/*.{h,m,swift}'
  # s.pod_target_xcconfig = {
  #   'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
  # }
  # s.tvos.pod_target_xcconfig = {
  #   'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
  # }
  # s.osx.pod_target_xcconfig = {
  #   'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
  # }
  s.watchos.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) WEBP_USE_INTRINSICS=1',
    #'USER_HEADER_SEARCH_PATHS' => '$(inherited) $(SRCROOT)/libwebp/src'
  }

  s.dependency 'Kingfisher', '~> 6.2'
  # s.dependency 'libwebp', '>= 1.1.0'
end
