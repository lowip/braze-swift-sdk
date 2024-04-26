// swift-tools-version:5.9

import PackageDescription

let package = Package(
  name: "braze-swift-sdk",
  defaultLocalization: "en",
  platforms: [
    .iOS(.v12),
    .macCatalyst(.v13),
    .tvOS(.v12),
    .visionOS(.v1)
  ],
  products: [
    .library(
      name: "BrazeKit",
      targets: ["BrazeKit"]
    ),
    .library(
      name: "BrazeUI",
      targets: ["BrazeUI"]
    ),
    .library(
      name: "BrazeLocation",
      targets: ["BrazeLocation"]
    ),
    .library(
      name: "BrazeNotificationService",
      targets: ["BrazeNotificationService"]
    ),
    .library(
      name: "BrazePushStory",
      targets: ["BrazePushStory"]
    ),
    .library(
      name: "BrazeKitCompat",
      targets: ["BrazeKitCompat"]
    ),
    .library(
      name: "BrazeUICompat",
      targets: ["BrazeUICompat"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.19.0"),
    /* ${dependencies-start} */
    /* ${dependencies-end} */
  ],
  targets: [
    .binaryTarget(
      name: "BrazeKit",
      url: "https://github.com/lowip/braze-swift-sdk/releases/download/9.0.0/BrazeKit.zip",
      checksum: "2c9d16beed04f033c5b548b7ae183c63009bf0abf96a7e9c025dc2c8a657aa5f"
    ),
    .target(
      name: "BrazeUI",
      dependencies: [
        .target(name: "BrazeKit"),
      ],
      resources: [.process("Resources")]
    ),
    .binaryTarget(
      name: "BrazeLocation",
      url: "https://github.com/lowip/braze-swift-sdk/releases/download/9.0.0/BrazeLocation.zip",
      checksum: "5f4aba07aa223be787f7bd4d284fe947264f19ebac299af9b9feead7956c033d"
    ),
    .binaryTarget(
      name: "BrazeNotificationService",
      url: "https://github.com/lowip/braze-swift-sdk/releases/download/9.0.0/BrazeNotificationService.zip",
      checksum: "250ec59f7a9215515bd115d061f1bd05efdc86c736edaac30377ae99bb90fb34"
    ),
    .binaryTarget(
      name: "BrazePushStory",
      url: "https://github.com/lowip/braze-swift-sdk/releases/download/9.0.0/BrazePushStory.zip",
      checksum: "a15774ca2a01476645a8d260dea80b4d0a607a08722cf86c4f24c624c4f5051a"
    ),
    .target(
      name: "BrazeKitCompat",
      dependencies: [
        .target(name: "BrazeKit"),
        .target(name: "BrazeLocation"),
      ]
    ),
    .target(
      name: "BrazeUICompat",
      dependencies: [
        "BrazeKitCompat",
        "SDWebImage",
      ],
      resources: [
        .process("ABKNewsFeed/Resources"),
        .process("ABKInAppMessage/Resources"),
        .process("ABKContentCards/Resources")
      ],
      publicHeadersPath: "include/AppboyUI"
    ),
  ]
)
