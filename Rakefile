# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/android'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|

  app.name = 'CraftARAndroid'
  app.api_version = "19"

  app.main_activity = 'SplashScreenActivity'
  app.sub_activities += [
    'ARProgrammaticallyActivity',
    'ARFromCraftARActivity',
    'RecognitionOnlyActivity',
    'LaunchersActivity',
    'HowToActivity',
    'WebActivity'
  ]

  app.permissions += [
    'android.permission.CAMERA',
    'android.permission.CAMERA_EXTENDED',
    'android.permission.INTERNET',
    'android.permission.WRITE_EXTERNAL_STORAGE',
    'android.hardware.camera.autofocus'
  ]

  app.vendor_project jar: 'vendor/craftar-augmented-reality-sdk-android/libs/android-support-v4.jar',
  native: [
    "vendor/craftar-augmented-reality-sdk-android/libs/armeabi-v7a/libCraftARSDK_neon.so",
    "vendor/craftar-augmented-reality-sdk-android/libs/armeabi-v7a/libCraftARSDK.so",
    "vendor/craftar-augmented-reality-sdk-android/libs/armeabi-v7a/libneondetection.so",
    "vendor/craftar-augmented-reality-sdk-android/libs/armeabi-v7a/libtrack.so"
  ]
  app.vendor_project jar: 'vendor/craftar-augmented-reality-sdk-android/libs/android-tracking-sdk.jar'
  app.vendor_project jar: "vendor/craftar-augmented-reality-sdk-android/libs/ofandroidlib.jar"
  app.vendor_project jar: "vendor/craftar-augmented-reality-sdk-android/libs/sanselan-0.97-incubator.jar"

end
