# swiftui-extensions

**SwiftUI Extensions** is an umpteenth package containing extensions for Apple's SwiftUI framework.

## Content

The package currently provides the following implementations:

### Extensions

**`Color`**

- `init(hex:)`: Creates a new instance with the specified hexadecimal value.
- `gray1`: A context-dependent first-level shade of grey color suitable for use in UI elements.
- `gray2`: A context-dependent second-level shade of grey color suitable for use in UI elements.
- `gray3`: A context-dependent third-level shade of grey color suitable for use in UI elements.
- `gray4`: A context-dependent fourth-level shade of grey color suitable for use in UI elements.
- `gray5`: A context-dependent fifth-level shade of grey color suitable for use in UI elements.
- `gray6`: A context-dependent sixth-level shade of grey color suitable for use in UI elements.
- `random`: Returns a random color.

**`EditMode`**

- `toggle()`: Toggles the mode to its opposite value.

**`Image`**

- `init(name:type:)`: Creates a new instance with the specified file name and type.

**`Picker`**

- `init(_:selection:)`: Creates a new instance with the specified title key and selection.
- `init(_:selection:)`: Creates a new instance with the specified title and selection.

**`PreviewDevice`**

- `init(_:)`: Creates a new instance with the specified Apple device.

**`TextStyle`**

- `defaultLeading`: The default leading used by this text style.
- `defaultSize`:  The default size used by this text style.
- `defaultWeight`: The default weight used by this text style.

**`View`**

- `cornerRadius(_:_:)`: Clips this view to its bounding frame, with the specified corner radius.
- `cornerRadius(_:_:)`: Clips this view to its bounding frame, with the specified corner group radius.
- `enabled(_:)`: Adds a condition that controls whether this view is interactable.
- `hidden(_:)`: Adds a condition that controls whether this view is hidden.
- `shown(_:)`: Adds a condition that controls whether this view is shown.
- `minimized(_:)`: Adds a condition that controls whether this view is minimized.
- `previewDevices(_:)`: Overrides the devices for a preview.
- `ifDebug(perform:)`: Performs the specified action if in debug.
- `readDragDirection(perform:)`: Reads the drag direction.

### Objects

**`AppleDevice`**: A representation of an Apple device.

**`Corner`**: A representation of a corner.

**`CornerGroup`**: A representation of a group of corners.

**`DragDirection`**: A representation of a drag direction.

**`UserInterface`**: A representation of a user interface.

### Shapes

**`Polygon`**: A representation of a polygon.

### Styles

**`ColorfulLabelStyle`**: A label style that shows both the title and icon of the label using a system-standard layout.

- `init(tint:)`: Creates a new instance with the specified tint.

**`OrbitalProgressStyle`**: A progress view that visually indicates its progress using an orbit.

- `init(tint:)`: Creates a new instance with the specified tint.

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
