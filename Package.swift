// swift-tools-version:5.7

import PackageDescription

let package = Package(
  name: "braze-swift-sdk",
  defaultLocalization: "en",
  platforms: [
    .iOS(.v11),
    .tvOS(.v11)
  ],
  products: [
    .library(
      name: "BrazeKit",
      targets: ["BrazeKit", "BrazeKitResources"]
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
    .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.13.2"),
    /* ${dependencies-start} */
    /* ${dependencies-end} */
  ],
  targets: [
    .binaryTarget(
      name: "BrazeKit",
      url: "https://github.com/lowip/braze-swift-sdk/releases/download/7.3.0/BrazeKit.zip",
      checksum: "d39e9dc09d966fd818c1f4d7da7736e32a545a85a4275dec4aa9a45b80afa2dd"
    ),
    .target(
      name: "BrazeKitResources",
      resources: [
        .process("Resources"),
      ]
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
      url: "https://github.com/lowip/braze-swift-sdk/releases/download/7.3.0/BrazeLocation.zip",
      checksum: "9abeb86bd155180c8f59cd3496190d586628a1954643449d510d0411e6a004a9"
    ),
    .binaryTarget(
      name: "BrazeNotificationService",
      url: "https://github.com/lowip/braze-swift-sdk/releases/download/7.3.0/BrazeNotificationService.zip",
      checksum: "b1c04f597d364e335743a1cc56aa62875482e768bd92400395bae230fc152e98"
    ),
    .binaryTarget(
      name: "BrazePushStory",
      url: "https://github.com/lowip/braze-swift-sdk/releases/download/7.3.0/BrazePushStory.zip",
      checksum: "adf11a236b2d91b58c5083d0d0828179d1ecd91c1678ded692a28a495766d5b6"
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
