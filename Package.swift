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
            url: "https://github.com/jonathaplima/TensorFlowLiteC.git",
            exact: "0.0.5"
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
