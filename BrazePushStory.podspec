Pod::Spec.new do |s|
  s.name              = 'BrazePushStory'
  s.version           = '9.0.0'
  s.summary           = 'Braze notification content extension library providing support for Push Stories.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazepushstory/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/lowip/braze-swift-sdk/releases/download/9.0.0/BrazePushStory.zip',
    :sha256 => 'a15774ca2a01476645a8d260dea80b4d0a607a08722cf86c4f24c624c4f5051a'
  }

  s.swift_version               = '5.0'
  s.ios.deployment_target       = '12.0'
  s.visionos.deployment_target  = '1.0'

  s.vendored_framework      = 'BrazePushStory.xcframework'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
