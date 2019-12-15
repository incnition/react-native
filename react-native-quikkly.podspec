#Learn more or give us feedback
require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'react-native-quikkly'
  s.version      = package['version']
  s.summary      = 'The Quikkly Smart Scannable SDK for React Native'

  s.authors      = {
    :"Quikkly Ltd" => 'info@quikklycodes.com'
  }
  s.homepage     = 'https://quikklycodes.com/'
  s.license      = {
    type: 'Commercial',
    file: 'LICENSE'
  }
  s.platform     = :ios, '8.0'

  s.source       = { :git => 'https://github.com/quikkly/react-native.git', :tag => '3.4.5' }
  s.source_files = "ios/**/*.{h,m}"

  s.dependency 'React'
  s.dependency 'Quikkly'
  s.swift_version = '4.1'

  s.requires_arc = true
end

