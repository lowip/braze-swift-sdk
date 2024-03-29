Pod::Spec.new do |s|
  s.name              = 'BrazePushStory'
  s.version           = '7.4.0'
  s.summary           = 'Braze notification content extension library providing support for Push Stories.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazepushstory/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/lowip/braze-swift-sdk/releases/download/7.4.0/BrazePushStory.zip',
    :sha256 => '0f3c874403e48add082963b178f885395c7c127811e8273fa7877715eab11acf'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '11.0'

  s.vendored_framework      = 'BrazePushStory.xcframework'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
