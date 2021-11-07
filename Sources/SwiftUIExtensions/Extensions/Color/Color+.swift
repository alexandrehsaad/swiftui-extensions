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
	public init?<Source>(hex: Source)
	where Source: StringProtocol {
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
	
	/// The RGBA values of this color.
	@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
	public var values: (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
		var red: CGFloat = 0
		var green: CGFloat = 0
		var blue: CGFloat = 0
		var alpha: CGFloat = 0
		
		#if canImport(UIKit)
		typealias Content = UIColor
		#elseif canImport(AppKit)
		typealias Content = NSColor
		#endif
		
		Content(self).getRed(&red, green: &green, blue: &blue, alpha: &alpha)
		
		return (red, green, blue, alpha)
	}
	
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
	
	// TODO: analogous
	/// Creates the analogous variant of this color.
	@available(*, unavailable)
	public var analogous: Self? {
		return self
	}
	
	/// Creates the complementary variant of this color, or in other terms its opposite.
	@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
	public var complementary: Self {
		let values = self.values
		
		let red: CGFloat = 1 - values.red
		let green: CGFloat = 1 - values.green
		let blue: CGFloat = 1 - values.blue
		let alpha: CGFloat = values.alpha
		
		return .init(red: red, green: green, blue: blue, opacity: alpha)
	}
	
	// TODO: monochromatic
	/// Creates the monochromatic variant of this color.
	@available(*, unavailable)
	public var monochromatic: Self {
		return self
	}
	
	// TODO: split complimentary
	/// Creates the split complimentary variant of this color.
	@available(*, unavailable)
	public var splitComplimentary: Self {
		return self
	}
	
	// TODO: triadic
	/// Creates the triadic variant of this color.
	@available(*, unavailable)
	public var triadic: Self {
		return self
	}
	
	// TODO: tetradic
	/// Creates the tetradic variant of this color.
	@available(*, unavailable)
	public var tetradic: Self {
		return self
	}
	
	/// Returs a random color.
	public static var random: Self {
		let red: UInt = .random(in: 0...255)
		let green: UInt = .random(in: 0...255)
		let blue: UInt = .random(in: 0...255)
		
		return .init(
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
	public static let brown: Self = .init("brown", bundle: .module)
	
	/// A context-dependent first-level shade of grey color suitable for use in UI elements.
	public static let gray1: Self = .init("gray_1", bundle: .module)
	
	/// A context-dependent second-level shade of grey color suitable for use in UI elements.
	public static let gray2: Self = .init("gray_2", bundle: .module)
	
	/// A context-dependent third-level shade of grey color suitable for use in UI elements.
	public static let gray3: Self = .init("gray_3", bundle: .module)
	
	/// A context-dependent fourth-level shade of grey color suitable for use in UI elements.
	public static let gray4: Self = .init("gray_4", bundle: .module)
	
	/// A context-dependent fifth-level shade of grey color suitable for use in UI elements.
	public static let gray5: Self = .init("gray_5", bundle: .module)
	
	/// A context-dependent sixth-level shade of grey color suitable for use in UI elements.
	public static let gray6: Self = .init("gray_6", bundle: .module)
	
	/// A context-dependent indigo color suitable for use in UI elements.
	@available(iOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(macOS, obsoleted: 12, message: "Available in SwiftUI 3")
	@available(tvOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(watchOS, obsoleted: 8, message: "Available in SwiftUI 3")
	public static let indigo: Self = .init("indigo", bundle: .module)
	
	/// A context-dependent mint color suitable for use in UI elements.
	@available(iOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(macOS, obsoleted: 12, message: "Available in SwiftUI 3")
	@available(tvOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(watchOS, obsoleted: 8, message: "Available in SwiftUI 3")
	public static let mint: Self = .init("mint", bundle: .module)
	
	/// A context-dependent teal color suitable for use in UI elements.
	@available(iOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(macOS, obsoleted: 12, message: "Available in SwiftUI 3")
	@available(tvOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(watchOS, obsoleted: 8, message: "Available in SwiftUI 3")
	public static let teal: Self = .init("teal", bundle: .module)
	
	/// Creates a lightened variant of this color by the specified factor.
	///
	/// - Parameter factor: The lightening factor.
	/// - Returns: The color lightened.
	@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
	public func lightened(by factor: CGFloat) -> Self {
		let values = self.values
		
		let red: CGFloat = values.red * (1 - factor)
		let green: CGFloat = values.green * (1 - factor)
		let blue: CGFloat = values.blue * (1 - factor)
		let alpha: CGFloat = values.alpha
		
		return .init(red: red, green: green, blue: blue, opacity: alpha)
	}
	
	/// Creates a darkened variant of this color by the specified factor.
	///
	/// - Parameter factor: The darkening factor.
	/// - Returns: The color darkened.
	@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
	public func darkened(by factor: CGFloat) -> Self {
		let values = self.values
		
		let red: CGFloat = values.red + (255 - values.red) * factor
		let green: CGFloat = values.green + (255 - values.green) * factor
		let blue: CGFloat = values.blue + (255 - values.blue) * factor
		let alpha: CGFloat = values.alpha
		
		return .init(red: red, green: green, blue: blue, opacity: alpha)
	}
	
	// TODO: saturated
	/// Creates a saturated variant of this color.
	@available(*, unavailable)
	public func saturated() -> Self {
		return self
	}
	
	// TODO: desaturated
	/// Creates a desaturated variant of this color.
	@available(*, unavailable)
	public func desaturated() -> Self {
		return self
	}
	
	/// Returns this color layered with the specified color.
	///
	/// - Parameter color: The color to layer on top.
	/// - Returns: The two colors layered.
	@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
	public func layered(with color: Self) -> Self {
		let lhsValues = self.values
		let rhsValues = color.values
		
		let red: CGFloat = lhsValues.red + (rhsValues.red - lhsValues.red) * rhsValues.alpha
		let green: CGFloat = lhsValues.green + (rhsValues.green - lhsValues.green) * rhsValues.alpha
		let blue: CGFloat = lhsValues.blue + (rhsValues.blue - lhsValues.blue) * rhsValues.alpha
		
		return .init(red: red, green: green, blue: blue)
	}
}
