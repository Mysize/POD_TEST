Pod::Spec.new do |spec|

  spec.name         = 'POD_TEST'
  spec.version      = '1.0.5'
  spec.summary      = 'This is my first pod framework'
  spec.description  = 'This is my first pod framework please don\'t tease me!'
  spec.homepage     = 'https://www.mysizeid.com'
  spec.license      = 'MIT'
  spec.author       = {'NetanelY' => 'netanel@mysizeid.com'}
  spec.platform     = :ios, '13.2'
  spec.source       = { :git => 'https://github.com/Mysize/POD_TEST.git', :tag => '1.0.5' }
  spec.source_files  = 'POD_TEST'
  spec.requires_arc  = true
  spec.resources = "POD_TEST/images.bundle"
  #spec.public_header_files = 'POD_TEST/POD_TEST/Public/*.h'

end
