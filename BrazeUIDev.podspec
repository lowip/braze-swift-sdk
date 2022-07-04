Pod::Spec.new do |s|
  s.name        = 'BrazeUIDev'
  s.module_name = 'BrazeUI'
  s.version     = '${version}'
  s.summary     = 'Braze-provided user interface library for in-app messages.'

  s.homepage    = 'https://braze.com'
  s.license     = { :type => 'Commercial' }
  s.authors     = 'Braze, Inc.'

  s.source      = { :git => 'https://github.com/${repository}.git', :tag => '${version}' }

  s.swift_version           = '5.0'
  s.ios.deployment_target   = '10.0'
  s.static_framework        = true

  ${vendored}
  s.resource_bundles        = { 'BrazeUI' => 'Sources/BrazeUI/Resources/*' }

  s.dependency 'BrazeKitDev', '${version}'
end
