import Flutter
import AVFoundation
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
    var splashCoordinator: EasySplashCoordinator?

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
        let splashConfig = EasySplashNativeConfig(
            duration: 3.0,
            text: "Learning Without Barriers",
            backgroundLightHex: "#1a4d8f",
            backgroundDarkHex: "#1a4d8f",
            imageLightName: "simple_splash_view_image_light.png",
            imageDarkName: nil,
            lottieLightName: nil,
            lottieDarkName: nil,
            soundName: nil,
            textColorLightHex: "#FFFFFF",
            textColorDarkHex: "#FFFFFF",
            indicatorColorLightHex: "#4DB8FF",
            indicatorColorDarkHex: "#4DB8FF",
            showsIndicator: true,
            indicatorPosition: "auto",
            textPosition: "auto",
            flutterImageAssetLight: "assets/Icon.png",
            flutterImageAssetDark: nil,
            flutterLottieAssetLight: nil,
            flutterLottieAssetDark: nil,
            flutterSoundAsset: nil
        )
        splashCoordinator = EasySplashCoordinator(window: window, config: splashConfig)
        splashCoordinator?.presentIfNeeded()

    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
