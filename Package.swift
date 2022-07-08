// swift-tools-version:5.5

import PackageDescription

let package = Package(
  name: "braze-swift-sdk",
  defaultLocalization: "en",
  platforms: [
    .iOS(.v10), 
    .tvOS(.v10),
  ],
  products: [
    .library(
      name: "BrazeKit",
      targets: ["BrazeKit", "BrazeKitResources"]
    ),
    .library(name: "BrazeUI", targets: ["BrazeUI"]),
    .library(name: "BrazeLocation", targets: ["BrazeLocation"]),
    .library(name: "BrazeNotificationService", targets: ["BrazeNotificationService"]),
    .library(name: "BrazePushStory", targets: ["BrazePushStory"]),
  ],
  dependencies: [
    /* ${dependencies-start} */
    /* ${dependencies-end} */
  ],
  targets: [
    .binaryTarget(
      name: "BrazeKit",
      url: "https://github.com/lowip/braze-swift-sdk/releases/download/5.0.0/BrazeKit.zip",
      checksum: "0108547cc3a694b852d01b2f3902ef261ced780f815ddd37edae164962aa8065"
    ),
    .target(
      name: "BrazeKitResources",
      resources: [.process("Resources")]
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
      url: "https://github.com/lowip/braze-swift-sdk/releases/download/5.0.0/BrazeLocation.zip",
      checksum: "0c7016c80d79301f36e860715c22bcf4ffb0424b4467d7c1da380427e1296b3e"
    ),
    .binaryTarget(
      name: "BrazeNotificationService",
      url: "https://github.com/lowip/braze-swift-sdk/releases/download/5.0.0/BrazeNotificationService.zip",
      checksum: "b5a8df22e80d484b031472d98237a610db298b94b3ffe95a1081faa29883c0ef"
    ),
    .binaryTarget(
      name: "BrazePushStory",
      url: "https://github.com/lowip/braze-swift-sdk/releases/download/5.0.0/BrazePushStory.zip",
      checksum: "51435db9149b54272e6abaf29b3e046d87fde1cfbc00d6cfef8daea7544f25ca"
    ),
  ]
)
