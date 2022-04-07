![](Assets/GitHubBanner.png)

# swiftui-extensions

A package containing extensions for Apple's SwiftUI framework.

## Availability

- iOS 15.0+
- iPadOS 15.0+
- macOS 12.0+
- watchOS 8.0+

## Installation

The Swift Package Manager is a tool for managing the distribution of Swift code and is integrated into the swift compiler.

1. Add the package to the dependencies in your `Package.swift` file.

    ```swift
    let package: Package = .init(
        ...
        dependencies: [
            .package(url: "https://github.com/alexandrehsaad/swiftui-extensions.git", branch: "main")
        ],
        ...
    )
    ```

2. Add the package as a dependency on your target in your `Package.swift` file.

    ```swift
    let package: Package = .init(
        ...
        targets: [
            .target(name: "MyTarget", dependencies: [
                .product(name: "SwiftUIX", package: "SwiftUIX")
            ]),
        ],
        ...
    )
    ```

3. Import the package in your source code.

    ```swift
    import SwiftUIX
    ```

## Contribution

### Reporting a bug

If you find a bug, please create an [issue](https://github.com/alexandrehsaad/swift-locations/issues).

### Contacting the maintainers

The current code owner of this repository is Alex ([@alexandrehsaad](https://github.com/alexandrehsaad)). If you want to share your thoughts or feedback on how to improve this repository, you can contact him by writing an email to alexandresaad at icloud dot com.

### Supporting this repository

If this repository has been useful to you in some way, show your support by starring it.

## License

Distributed under MIT License. See the `LICENSE.txt` file for more information.
