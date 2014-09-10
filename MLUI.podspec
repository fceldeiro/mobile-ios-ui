
Pod::Spec.new do |s|
  s.name             = "MLUI"
  s.version          = "0.0.1"
  s.summary          = "MercadoLibre mobile ios UI components"
  s.homepage         = "https://github.com/fceldeiro/mobile-ios-ui"
  s.license          = 'MIT'
  s.author           = { "Fabian Celdeiro" => "fabian.celdeiro@mercadolibre.com" }
  s.source           = { :git => "https://github.com/fceldeiro/mobile-ios-ui.git", :tag => s.version.to_s }
  s.platform     = :ios, '6.0'
  s.requires_arc = true


  s.subspec 'Core' do |core|
    core.resource_bundle = {
      'Core' => ['MLUI/Core/assets/*.*']
    }
    core.source_files  = 'MLUI/Core/classes/*.{h,m,c}'
  end

  s.subspec 'CircleView' do |circleView|
    circleView.source_files = 'MLUI/CircleView/classes/*.{h,m}'
    circleView.resource_bundle = {
      'CircleView' => ['MLUI/CircleView/assets/*.*']
    }
    circleView.dependency 'MLUI/Core'
  end

   s.subspec 'RedCircleView' do |redCircleView|
    redCircleView.source_files = 'MLUI/RedCircleView/classes/*.{h,m}'
    redCircleView.dependency 'MLUI/CircleView'
    redCircleView.dependency 'MLNewBoxDependecy'
  end


end


