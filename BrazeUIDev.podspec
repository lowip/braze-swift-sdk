Pod::Spec.new do |s|
  s.name        = 'BrazeUIDev'
  s.module_name = 'BrazeUI'
  s.version     = '5.0.0'
  s.summary     = 'Braze-provided user interface library for in-app messages.'

  s.homepage    = 'https://braze.com'
  s.license     = { :type => 'Commercial' }
  s.authors     = 'Braze, Inc.'

  s.source      = { :git => 'https://github.com/lowip/braze-swift-sdk.git', :tag => '5.0.0' }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'
  s.static_framework        = true

  s.source_files            = 'Sources/BrazeUI/**/*.swift'
  s.resource_bundles        = { 'BrazeUI' => 'Sources/BrazeUI/Resources/**/*' }

  s.dependency 'BrazeKitDev', '5.0.0'
end
