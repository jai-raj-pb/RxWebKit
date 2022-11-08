// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

 let package = Package(
     name: "RxWebKit",
     platforms: [
         .iOS(.v9)
     ],
     products: [
         .library(name: "RxWebKit", targets: ["RxWebKit"])
     ],
     dependencies: [
         .package(url: "https://github.com/ReactiveX/RxSwift", .upToNextMajor(from: "5.0.0")),
         .package(url: "https://github.com/mukesh-mt/Quick.git", .branchItem("mindtickle")),
         .package(url: "https://github.com/Quick/Nimble.git", .exactItem("9.0.0"))
     ],
     targets: [
         .target(
             name: "RxWebKit",
             dependencies: ["RxSwift", "RxCocoa", "RxRelay"],
             path: "RxWebKit"
         ),
         .testTarget(
             name: "RxWebKitTests",
             dependencies: ["RxWebKit", "RxTest", "Nimble", "Quick"],
             path: "RxWebKitTests"
         )
     ],
     swiftLanguageVersions: [.v5]
 )
