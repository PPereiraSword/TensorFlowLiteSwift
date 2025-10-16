// swift-tools-version:5.6

import PackageDescription

let package = Package(
    name: "TensorFlowLiteSwift",
    products: [
        .library(
            name: "TensorFlowLiteSwift",
            targets: ["TensorFlowLite"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/PPereiraSword/TensorFlowLiteC.git",
            exact: "0.0.6"
        ),
    ],
    targets: [
        .target(
            name: "TensorFlowLite",
            dependencies: [
                .product(name: "TensorFlowLiteC", package: "TensorFlowLiteC")
            ]
        ),
    ]
)
