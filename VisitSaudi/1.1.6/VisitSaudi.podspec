Pod::Spec.new do |spec|
  spec.name         = 'VisitSaudi'
  spec.version      = '1.1.6'
  spec.summary      = 'Unity iOS project exported as a CocoaPod.'
  spec.description  = <<-DESC
    A Unity iOS project exported as-is and packaged into a private CocoaPod
    for easy integration with native iOS apps. This CocoaPod contains all the necessary Unity frameworks,
    libraries, and resources to run the Unity project on iOS.
  DESC
  spec.homepage     = 'https://github.com/NarsunOrg/VisitSaudiMetaversIOS'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { 'Muhammad Riaz' => 'muhammadriaz@narsunstudios.com' }
  #spec.source = { :git => 'https://github.com/Saudi-Tourism-Authority/VisitSaudi_Metaverse_iOS.git', :tag => spec.version }
  spec.source = { :git => 'https://mriaz764@github.com/NarsunOrg/VisitSaudiMetaversIOS.git', :tag => spec.version }
  spec.platform     = :ios, '12.0'
 
  # Source and header files
  # spec.source_files = "UnityFramework/**/*"
  spec.source_files = [
    'Classes/**/*.{h}',
    'MainApp/**/*.{h}',
    'Libraries/**/*.{h}',
    'UnityFramework/**/*'
  ]
  
   spec.public_header_files = [
    'Classes/**/*.h',
    'MainApp/**/*.h',
    'Libraries/*.h'
  ]

  # spec.public_header_files = [
  #   'Classes/**/*.h',
  #   'MainApp/**/*.h',
  #   'Libraries/**/*.h'
  # ]

#   spec.preserve_paths      = '**/*'
spec.exclude_files = [
  'UnityFramework/Info.plist'
]


spec.resource_bundles = {
  'VisitSaudiResources' => [
    'Unity-iPhone/Images.xcassets/**/*',
    'LaunchScreen-*.storyboard',
    'MainApp/**/*.{mm}',
  ]
}
spec.vendored_frameworks = 'UnityFramework/UnityFramework.framework'
# Include additional Swift modules/libraries
spec.vendored_libraries = 'UnityFramework/UnityFramework.framework/Frameworks/*.dylib'

  spec.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) COCOAPODS=1 BASELIB_API="__attribute__((visibility(\\"default\\")))"',
    'CLANG_ENABLE_OBJC_ARC' => 'YES',
    'ENABLE_BITCODE' => 'NO',
    'GCC_C_LANGUAGE_STANDARD' => 'gnu99',
     'CLANG_CXX_LANGUAGE_STANDARD' => 'c++14',
     'CLANG_CXX_LIBRARY' => 'libc++',
     'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64',
    'HEADER_SEARCH_PATHS' => '"$(inherited)" "$(SRCROOT)" "$(SRCROOT)/Classes/**" "$(SRCROOT)/UnityFramework/**" "$(SRCROOT)/Il2CppOutputProject/**" "$(SRCROOT)/Il2CppOutputProject/os/c-api" "$(SRCROOT)/Il2CppOutputProject/IL2CPP/external" "$(SRCROOT)/Il2CppOutputProject/IL2CPP/external/bdwgc/private"'

  }
  spec.pod_target_xcconfig = { 
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64' 
  }
  spec.user_target_xcconfig = { 
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64' 
  }
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 x86_64',
    'ONLY_ACTIVE_ARCH' => 'YES'
  }
   

  spec.frameworks = [
    'CoreVideo','UserNotifications','AVFoundation',
    'AVKit', 'AudioToolbox', 'CFNetwork', 'CoreGraphics', 'CoreLocation', 'CoreMedia',
    'CoreMotion', 'CoreText', 'CoreVideo', 'Foundation', 'GameController', 'MediaToolbox',
     'Metal', 'OpenAL', 'QuartzCore', 'Security', 'SystemConfiguration', 'UIKit',
    'WebKit', 'UserNotifications', 'CoreFoundation'
  ]



  #spec.vendored_frameworks = 'ACPCore/ACPAnalytics.xcframework', 'ACPCore/ACPCore.xcframework','ACPCore/ACPIdentity.xcframework',
                       # 'ACPCore/ACPLifecycle.xcframework','ACPCore/ACPSignal.xcframework'

  #spec.vendored_libraries = 'build/Release-iphoneos/libACPAnalytics_iOS.a','build/Release-iphoneos/libACPCore_iOS.a','build/Release-iphoneos/libACPIdentity_iOS.a',
                     #  'build/Release-iphoneos/libACPLifecycle_iOS.a','build/Release-iphoneos/libACPSignal_iOS.a'
  spec.libraries = "c++"


end