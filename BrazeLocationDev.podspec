Pod::Spec.new do |s|
  s.name        = 'BrazeLocationDev'
  s.module_name = 'BrazeLocation'
  s.version     = '${version}'
  s.summary     = 'Braze location library providing support for location analytics and geofence monitoring.'

  s.homepage    = 'https://braze.com'
  s.license     = { :type => 'Commercial' }
  s.authors     = 'Braze, Inc.'

  s.source      = {
    :http => 'https://github.com/${repository}/releases/download/${version}/BrazeLocation-CocoaPods.zip',
    :sha256 => '${sha256}'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'
  s.tvos.deployment_target  = '10.0'

  ${vendored}

  # Depends on BrazeKit because BrazeKit includes the internal _BrazeLocationClient symbols required
  # for linking against BrazeLocation.
  s.dependency 'BrazeKitDev', '${version}'
end
