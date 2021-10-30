// Color+.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

extension Color {
	/// Creates a new instance with the specified hexadecimal value.
	///
	/// ```swift
	/// let red: Color? = .init(hex: "#FF0000")
	/// print(red)
	/// // Prints "red"
	/// ```
	///
	/// - Parameter hex: The hexadimal value.
	public init?(hex: String) {
		var hexValue: Substring = .init(hex)
		
		if hexValue.hasPrefix("#") == true {
			hexValue = hexValue.dropFirst()
		}
		
		guard let value: UInt = .init(hexValue, radix: 16) else {
			return nil
		}

		var red: CGFloat = 0
		var green: CGFloat = 0
		var blue: CGFloat = 0

		switch hexValue.count {
		case 3:
			red = .init((value >> 8) * 17)
			green = .init((value >> 4 & 0xF) * 17)
			blue = .init((value & 0xF) * 17)
		case 6:
			red = .init(value >> 16)
			green = .init(value >> 8 & 0xFF)
			blue = .init(value & 0xFF)
		default:
			return nil
		}
		
		red /= 255
		green /= 255
		blue /= 255

		self.init(red: red, green: green, blue: blue, opacity: 1)
	}
	
	// TODO: analogous
	/// Creates the analogous variant of this color.
	@available(*, unavailable)
	public var analogous: Color? {
		return self
	}
	
	// TODO: complementary
	/// Creates the complementary variant of this color.
	@available(*, unavailable)
	public var complementary: Color? {
		return self
	}
	
	// TODO: monochromatic
	/// Creates the monochromatic variant of this color.
	@available(*, unavailable)
	public var monochromatic: Color {
		return self
	}
	
	// TODO: split complimentary
	/// Creates the split complimentary variant of this color.
	@available(*, unavailable)
	public var splitComplimentary: Color {
		return self
	}
	
	// TODO: triadic
	/// Creates the triadic variant of this color.
	@available(*, unavailable)
	public var triadic: Color {
		return self
	}
	
	// TODO: tetradic
	/// Creates the tetradic variant of this color.
	@available(*, unavailable)
	public var tetradic: Color {
		return self
	}
	
	/// A random color.
	public static var random: Color {
		let red: UInt = .random(in: 0...255)
		let green: UInt = .random(in: 0...255)
		let blue: UInt = .random(in: 0...255)
		
		return Color(
			.sRGB,
			red: .init(red) / 255,
			green: .init(green) / 255,
			blue: .init(blue) / 255,
			opacity: 1
		)
	}
	
	/// A context-dependent brown color suitable for use in UI elements.
	@available(iOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(macOS, obsoleted: 12, message: "Available in SwiftUI 3")
	@available(tvOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(watchOS, obsoleted: 8, message: "Available in SwiftUI 3")
	public static let brown: Color = .init("brown", bundle: .module)
	
	/// A  context-dependent first-level shade of grey color suitable for use in UI elements.
	public static let gray1: Color = .init("gray_1", bundle: .module)
	
	/// A  context-dependent second-level shade of grey color suitable for use in UI elements.
	public static let gray2: Color = .init("gray_2", bundle: .module)
	
	/// A  context-dependent third-level shade of grey color suitable for use in UI elements.
	public static let gray3: Color = .init("gray_3", bundle: .module)
	
	/// A  context-dependent fourth-level shade of grey color suitable for use in UI elements.
	public static let gray4: Color = .init("gray_4", bundle: .module)
	
	/// A  context-dependent fifth-level shade of grey color suitable for use in UI elements.
	public static let gray5: Color = .init("gray_5", bundle: .module)
	
	/// A  context-dependent sixth-level shade of grey color suitable for use in UI elements.
	public static let gray6: Color = .init("gray_6", bundle: .module)
	
	/// A context-dependent indigo color suitable for use in UI elements.
	@available(iOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(macOS, obsoleted: 12, message: "Available in SwiftUI 3")
	@available(tvOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(watchOS, obsoleted: 8, message: "Available in SwiftUI 3")
	public static let indigo: Color = .init("indigo", bundle: .module)
	
	/// A context-dependent mint color suitable for use in UI elements.
	@available(iOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(macOS, obsoleted: 12, message: "Available in SwiftUI 3")
	@available(tvOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(watchOS, obsoleted: 8, message: "Available in SwiftUI 3")
	public static let mint: Color = .init("mint", bundle: .module)
	
	/// A context-dependent teal color suitable for use in UI elements.
	@available(iOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(macOS, obsoleted: 12, message: "Available in SwiftUI 3")
	@available(tvOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(watchOS, obsoleted: 8, message: "Available in SwiftUI 3")
	public static let teal: Color = .init("teal", bundle: .module)
	
	// TODO: isLight
	/// A boolean value indicating whether this instance is light.
	@available(*, unavailable)
	public var isLight: Bool {
		return false
	}
	
	// TODO: isDark
	/// A boolean value indicating whether this instance is dark.
	@available(*, unavailable)
	public var isDark: Bool {
		return false
	}
	
	// TODO: lightened
	/// Creates a lightened variant of this color.
	@available(*, unavailable)
	public func lightened() -> Color {
		return self
	}
	
	// TODO: darkened
	/// Creates a darkened variant of this color.
	@available(*, unavailable)
	public func darkened() -> Color {
		return self
	}
	
	// TODO: saturated
	/// Creates a saturated variant of this color.
	@available(*, unavailable)
	public func saturated() -> Color {
		return self
	}
	
	// TODO: desaturated
	/// Creates a desaturated variant of this color.
	@available(*, unavailable)
	public func desaturated() -> Color {
		return self
	}
	
	// TODO: inverted
	/// Creates the inverted variant of this color.
	@available(*, unavailable)
	public func inverted() -> Color {
		return self
	}
}
