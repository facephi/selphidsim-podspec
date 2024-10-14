#
#  Be sure to run `pod spec lint FPhiSelphIDWidgetiOSSim.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

    spec.name         = "FPhiSelphIDWidgetiOSSim"
    spec.version      = "1.27.2"
    spec.summary      = "A short description of FPhiSelphIDWidgetiOSSim."
  
    spec.summary      = "Component for OCR and liveness test"
    spec.ios.deployment_target  = "13.0"
  
    spec.description  = <<-DESC
    Safe digital onboarding solution with the best real time OCR in the market with facial liveness test.
    DESC
    spec.homepage     = "https://www.facephi.com"
    spec.license = { :type => "Commercial", 
                     :text => <<-LICENSE
                     © Facephi 2021. All rights reserved.
                  LICENSE
                }
  
    spec.author             = { "Facephi" => "developer@facephi.com" }
    spec.source       = { :git => "https://github.com/facephi/selphidsim-framework.git", :tag => "#{spec.version}" }
  
    spec.pod_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386', 'EXCLUDED_ARCHS' => 'armv7' }
    spec.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386', 'EXCLUDED_ARCHS' => 'armv7' }
    spec.xcconfig = {
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
      'EXCLUDED_ARCHS' => 'armv7',
      'OTHER_LDFLAGS[sdk=iphonesimulator*]' => '-ObjC -l"c++" -l"iconv" -l"sqlite3" -l"z" -framework "AVFoundation" -framework "Accelerate" -framework "AssetsLibrary" -framework "AudioToolbox" -framework "CoreGraphics" -framework "CoreImage" -framework "CoreLocation" -framework "CoreMedia" -framework "CoreTelephony" -framework "CoreVideo" -framework "FPhiSelphIDWidgetiOS" -framework "Foundation" -framework "ImageIO" -framework "LocalAuthentication" -framework "Security" -framework "SystemConfiguration" -framework "UIKit"'
    
    }
    
    spec.ios.resources = "fphi-selphid-widget-resources-selphid-1.0.zip"
    spec.ios.vendored_frameworks = "FPhiSelphIDWidgetiOS.xcframework"
    
    spec.dependency "GoogleMLKit/TextRecognition", "6.0.0"
    spec.dependency "GoogleMLKit/TextRecognitionKorean", "6.0.0"
    spec.dependency "GoogleMLKit/TextRecognitionJapanese", "6.0.0"
    spec.dependency "FPhiMBWidgetiOS", "6.9.2"
    spec.dependency "zipzap"
  
  end
  
