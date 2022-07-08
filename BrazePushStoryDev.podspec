Pod::Spec.new do |s|
  s.name        = 'BrazePushStoryDev'
  s.module_name = 'BrazePushStory'
  s.version     = '5.0.0'
  s.summary     = 'Braze notification content extension library providing support for Push Stories.'

  s.homepage    = 'https://braze.com'
  s.license     = { :type => 'Commercial' }
  s.authors     = 'Braze, Inc.'

  s.source      = {
    :http => 'https://github.com/lowip/braze-swift-sdk/releases/download/5.0.0/BrazePushStory-CocoaPods.zip',
    :sha256 => '9a54420af5f831d4e5a34be37c8c570a1ac01961a8e5f024180a64d6e79cc674'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'

  s.vendored_framework      = 'BrazePushStory.xcframework'
end
