Pod::Spec.new do |s|
  s.name        = 'BrazeLocationDev'
  s.module_name = 'BrazeLocation'
  s.version     = '5.0.0'
  s.summary     = 'Braze location library providing support for location analytics and geofence monitoring.'

  s.homepage    = 'https://braze.com'
  s.license     = { :type => 'Commercial' }
  s.authors     = 'Braze, Inc.'

  s.source      = {
    :http => 'https://github.com/lowip/braze-swift-sdk/releases/download/5.0.0/BrazeLocation-CocoaPods.zip',
    :sha256 => '443ed124f9c0a7815cdd38c202bc90a79eeb481970de59cdb0a33fbb2b0f1b1c'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'
  s.tvos.deployment_target  = '10.0'

  s.vendored_framework      = 'BrazeLocation.xcframework'

  # Depends on BrazeKit because BrazeKit includes the internal _BrazeLocationClient symbols required
  # for linking against BrazeLocation.
  s.dependency 'BrazeKitDev', '5.0.0'
end
