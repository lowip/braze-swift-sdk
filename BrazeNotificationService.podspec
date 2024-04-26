Pod::Spec.new do |s|
  s.name              = 'BrazeNotificationService'
  s.version           = '9.0.0'
  s.summary           = 'Braze notification service extension library providing support for Rich Push notifications.'

  s.homepage          = 'https://braze.com'
  s.documentation_url = 'https://braze-inc.github.io/braze-swift-sdk/documentation/brazenotificationservice/'
  s.license           = { :type => 'Commercial' }
  s.authors           = 'Braze, Inc.'

  s.source            = {
    :http => 'https://github.com/lowip/braze-swift-sdk/releases/download/9.0.0/BrazeNotificationService.zip',
    :sha256 => '250ec59f7a9215515bd115d061f1bd05efdc86c736edaac30377ae99bb90fb34'
  }

  s.swift_version               = '5.0'
  s.ios.deployment_target       = '12.0'
  s.visionos.deployment_target  = '1.0'

  s.vendored_framework      = 'BrazeNotificationService.xcframework'

  s.pod_target_xcconfig     = { 'DEFINES_MODULE' => 'YES' }
end
