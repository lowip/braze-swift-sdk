Pod::Spec.new do |s|
  s.name        = 'BrazeKit'
  s.version     = '${version}'
  s.summary     = 'Braze Main SDK library providing support for analytics and push notifications.'

  s.homepage    = 'https://braze.com'
  s.license     = { :type => 'Commercial' }
  s.authors     = 'Braze, Inc.'

  s.source      = {
    :http => 'https://github.com/${repository}/releases/download/${version}/BrazeKit-CocoaPods.zip',
    :sha256 => '${sha256}'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'
  s.tvos.deployment_target  = '10.0'

  ${vendored}
  s.resource_bundles        = { 'BrazeKit' => 'Sources/BrazeKitResources/Resources/**/*' }
end
