Pod::Spec.new do |s|
  s.name             = "DFULibrary"
  s.version          = "4.9.0"
  s.summary          = "This repository contains a tested library for iOS 9+ devices to perform Device Firmware Update on the nRF5x devices"
  s.description      = <<-DESC
The nRF5x Series chips are flash-based SoCs, and as such they represent the most flexible solution available. A key feature of the nRF5x Series and their associated software architecture and S-Series SoftDevices is the possibility for Over-The-Air Device Firmware Upgrade (OTA-DFU). See Figure 1. OTA-DFU allows firmware upgrades to be issued and downloaded to products in the field via the cloud and so enables OEMs to fix bugs and introduce new features to products that are already out on the market. This brings added security and flexibility to product development when using the nRF5x Series SoCs.
                       DESC

  s.homepage         = "https://github.com/auradevices/IOS-Pods-DFU-Library"
  s.license          = 'BSD 3-Clause'
  s.authors          = { "Aleksander Nowakowski" => "aleksander.nowakowski@nordicsemi.no" }
  s.source           = { :git => "https://github.com/auradevices/IOS-Pods-DFU-Library.git", :tag => s.version.to_s, :branch => "master" }
  s.social_media_url = 'https://twitter.com/nordictweets'
  s.swift_versions   = ['4.2', '5.0', '5.1', '5.2', '5.3']
  
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.14'
  s.watchos.deployment_target = '5.0'

  s.source_files = 'iOSDFULibrary/Classes/**/*'

  s.dependency 'ZIPFoundation', '= 0.9.11'
  
  # Regarding the lines below see: https://stackoverflow.com/a/63955114/2115352
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
