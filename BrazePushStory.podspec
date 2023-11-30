Pod::Spec.new do |s|
  s.name              = 'BrazePushStory'
  s.version           = '7.3.0'
  s.summary           = 'Braze notification content extension library providing support for Push Stories.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazepushstory/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/lowip/braze-swift-sdk/releases/download/7.3.0/BrazePushStory.zip',
    :sha256 => 'adf11a236b2d91b58c5083d0d0828179d1ecd91c1678ded692a28a495766d5b6'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '11.0'

  s.vendored_framework      = 'BrazePushStory.xcframework'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
