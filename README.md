# swiftui-extensions

**SwiftUI Extensions** is a package containing extenions for the SwiftUI framework.

## Content

The package currently provides the following extensions:

**`Image`**

- `init(name:type:)`: Creates a new instance with the specified file name and type.

**`View`**

- `cornerRadius(_:_:)`: Clips this view to its bounding frame, with the specified corner radius.
- `cornerRadius(_:_:)`: Clips this view to its bounding frame, with the specified corner group radius.
- `previewDevice(_:)`: Overrides the device for a preview.
- `previewDevices(_:)`: Overrides the devices for a preview.

And the following implementations:

**`Corner`**: A representation of a corner.

**`CornerGroup`**: A representation of a group of corners.

**`Polygon`**: A representation of a polygon.


## Installation

To use this package in a SwiftPM project:

1. Add it to the dependencies in your `Package.swift` file:

```swift
let package = Package(
    ...
    dependencies: [
        .package(url: "https://github.com/alexandrehsaad/swiftui-extensions.git", branch: "main")
    ],
    ...
)
```

2. Add it as a dependency for your target in your `Package.swift` file:

```swift
let package = Package(
    ...
    targets: [
        .target(name: "MyTarget", dependencies: [
            .product(name: "SwiftUIExtensions", package: "swiftui-extensions")
        ]),
    ],
    ...
)
```

3. Import the package in your source code.

```swift
import SwiftUIExtensions
```

## Contribution

### Reporting a bug

If you find a bug, please open a bug report.

### Contacting the maintainers

The current code owner of this package is Alexandre H. Saad ([@alexandrehsaad](https://github.com/alexandrehsaad)). You can contact him by writing an email to alexandresaad at icloud dot com.

## Supporting

If you like our work, show your support by staring this repository.

## Feedback

We would love to hear your thoughts or feedback on how we can improve SwiftUI Extensions!
