// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "RSTabBar",
	platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "RSTabBar",
            targets: ["RSTabBar"]),
    ],
    targets: [
        .target(name: "RSTabBar", path: "Sources"),
    ]
)
