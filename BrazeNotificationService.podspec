Pod::Spec.new do |s|
  s.name        = 'BrazeNotificationService'
  s.version     = '${version}'
  s.summary     = 'Braze notification service extension library providing support for Rich Push notifications.'

  s.homepage    = 'https://braze.com'
  s.license     = { :type => 'Commercial' }
  s.authors     = 'Braze, Inc.'

  s.source      = {
    :http => 'https://github.com/${repository}/releases/download/${version}/BrazeNotificationService-CocoaPods.zip',
    :sha256 => '${sha256}'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'

  ${vendored}
end
