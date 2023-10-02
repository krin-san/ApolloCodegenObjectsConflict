// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "ApolloCodegenObjectsConflict",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "ApolloCodegenObjectsConflict",
            targets: ["ApolloCodegenObjectsConflict"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apollographql/apollo-ios", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "ApolloCodegenObjectsConflict",
            dependencies: [
                .product(name: "ApolloAPI", package: "apollo-ios"),
            ]
        ),
    ]
)
