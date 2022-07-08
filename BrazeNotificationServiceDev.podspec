Pod::Spec.new do |s|
  s.name        = 'BrazeNotificationServiceDev'
  s.module_name = 'BrazeNotificationService'
  s.version     = '5.0.0'
  s.summary     = 'Braze notification service extension library providing support for Rich Push notifications.'

  s.homepage    = 'https://braze.com'
  s.license     = { :type => 'Commercial' }
  s.authors     = 'Braze, Inc.'

  s.source      = {
    :http => 'https://github.com/lowip/braze-swift-sdk/releases/download/5.0.0/BrazeNotificationService-CocoaPods.zip',
    :sha256 => '09457c61742b60adc769e0b2572947b041e89a3025c3b0884191ad9ff64634e6'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'

  s.vendored_framework      = 'BrazeNotificationService.xcframework'
end
