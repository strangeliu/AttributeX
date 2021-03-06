Pod::Spec.new do |spec|
  spec.name         = 'AttributeX'
  spec.version      = '0.1'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/strangeliu/AttributeX'
  spec.source       = { :git => 'https://github.com/strangeliu/AttributeX.git', :tag => 'v0.1' }
  spec.authors      = { 'strangeliu' => 'strangeliu@gmail.com' }
  spec.summary      = 'Super sweet syntactic sugar for making AttributedString'

  spec.ios.deployment_target = '9.0'
  spec.swift_version = '5.0'

  spec.source_files = 'Source/*.{h,m,swift}'
end
