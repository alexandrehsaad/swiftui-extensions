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

If you find a bug, please create an [issue].

### Contacting the maintainers

The current code owner of this repository is Alex ([@alexandrehsaad]). If you want to share your thoughts or feedback on how to improve this repository, you can contact him by writing an email to alexandresaad at icloud dot com.

### Supporting this repository

If this repository has been useful to you in some way, show your support by starring it.

## Code of Conduct

To be a truly great community, we welcome developers from all walks of life, with different backgrounds, and with a wide range of experience. A diverse and friendly community will have more great ideas, more unique perspectives, and produce more great code. We will work diligently to make this community welcoming to everyone. See the `CODE_OF_CONDUCT.md` file for more information.

## License

Distributed under MIT License. See the `LICENSE.md` file for more information.

[issue]: https://github.com/alexandrehsaad/swiftui-extensions/issues
[@alexandrehsaad]: https://github.com/alexandrehsaad
