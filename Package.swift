// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

// https://developer.apple.com/documentation/swift_packages/bundling_resources_with_a_swift_package
let package = Package(
    name: "CSQLite",
    platforms: [.iOS(.v9), .macOS(.v10_10), .tvOS(.v9), .watchOS(.v2)],
    products: [
        .library(
            name: "CSQLite",
            targets: ["CSQLite"]),
         .library(
             name: "sqlite3",
             targets: ["sqlite3"])
    ],
    targets: [
        .target(
            name: "CSQLite",
            dependencies: ["sqlite3"],
            publicHeadersPath: "public"),
         .target(
             name: "sqlite3",
             publicHeadersPath: "public",
             cSettings: [
               .define("SQLITE_THREADSAFE"),
               .define("SQLITE_ENABLE_RTREE"),
               .define("SQLITE_ENABLE_COLUMN_METADATA"),
               .define("SQLITE_ENABLE_FTS5"),
               .define("SQLITE_ENABLE_SNAPSHOT")
             ]
         )
    ]
)
