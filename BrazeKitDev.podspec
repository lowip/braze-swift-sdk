Pod::Spec.new do |s|
  s.name        = 'BrazeKitDev'
  s.module_name = 'BrazeKit'
  s.version     = '5.0.0'
  s.summary     = 'Braze Main SDK library providing support for analytics and push notifications.'

  s.homepage    = 'https://braze.com'
  s.license     = { :type => 'Commercial' }
  s.authors     = 'Braze, Inc.'

  s.source      = {
    :http => 'https://github.com/lowip/braze-swift-sdk/releases/download/5.0.0/BrazeKit-CocoaPods.zip',
    :sha256 => '6fb635d890d7a8e4bb6e96683b197d80dbedb83f7880311898af41ceddd02470'
  }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'
  s.tvos.deployment_target  = '10.0'

  s.vendored_framework      = 'BrazeKit.xcframework'
  s.resource_bundles        = { 'BrazeKit' => 'Sources/BrazeKitResources/Resources/**/*' }
end
