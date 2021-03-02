Pod::Spec.new do |s|
  s.name            = "Demo2"
  s.version         = "0.1.0"
  s.author          = "tx2"
  s.license         = "MIT"
  s.homepage        = 'http://www.example.com'
  s.source          = { :git => "https://github.com/J-Mendes/ios-pods-subspec-test.git",
                        :tag => s.version.to_s }
  s.summary         = "This is a demo xcframework pod with subspecs"
  s.platform        = :ios, '12.0'
  s.default_subspec = 'Calculator'
  s.ios.frameworks  = 'Foundation', 'UIKit', 'WebKit', 'SafariServices'

  s.subspec 'Dep' do |sd|
    sd.frameworks           = 'UserNotifications'
    sd.vendored_frameworks  = 'Demodep.xcframework'
  end

  s.subspec 'Calculator' do |scal|
    scal.vendored_frameworks = 'Demo.xcframework'
    scal.dependency 'Demo2/Dep'
  end
end