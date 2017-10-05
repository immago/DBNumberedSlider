Pod::Spec.new do |s|
  s.name             = 'DBNumberedSlider'
  s.version          = '1.0.0'
  s.summary          = 'IB_Designable UISlider with value label inside thumb'
  s.description      = <<-DESC
                       IB_Designable UISlider with value UILabel inside thumb.
                       DESC

  s.homepage         = 'https://github.com/immago/DBNumberedSlider'
  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.author           = { 'Dmitry Byankin' => 'the.immago@gmail.com' }
  s.source           = { :git => 'https://github.com/immago/DBNumberedSlider.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'Classes/**/*'
end
