// Color+.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
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
	/// - parameter hex: The hexadimal value.
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
	
	public typealias Component = (red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8)
	
	/// The RGBA values of this color.
	public var values: Self.Component {
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
		
		red *= 255
		green *= 255
		blue *= 255
		alpha *= 100
		
		red.round(.toNearestOrAwayFromZero)
		green.round(.toNearestOrAwayFromZero)
		blue.round(.toNearestOrAwayFromZero)
		alpha.round(.toNearestOrAwayFromZero)
		
		return (.init(red), .init(green), .init(blue), .init(alpha))
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
	/// Returns the analogous variant of this color.
	@available(*, unavailable)
	public var analogous: Self? {
		return self
	}
	
	/// Returns the complementary variant of this color, or in other terms its opposite.
	public var complementary: Self {
		let values: Self.Component = self.values
		
		let red: CGFloat = 255 - .init(values.red)
		let green: CGFloat = 255 - .init(values.green)
		let blue: CGFloat = 255 - .init(values.blue)
		let alpha: CGFloat = .init(values.alpha)
		
		return .init(red: red, green: green, blue: blue, opacity: alpha)
	}
	
	// TODO: monochromatic
	/// Returns the monochromatic variant of this color.
	@available(*, unavailable)
	public var monochromatic: Self {
		return self
	}
	
	// TODO: split complimentary
	/// Returns the split complimentary variant of this color.
	@available(*, unavailable)
	public var splitComplimentary: Self {
		return self
	}
	
	// TODO: triadic
	/// Returns the triadic variant of this color.
	@available(*, unavailable)
	public var triadic: Self {
		return self
	}
	
	// TODO: tetradic
	/// Returns the tetradic variant of this color.
	@available(*, unavailable)
	public var tetradic: Self {
		return self
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
	
	/// Returns a lightened variant of this color by the specified factor.
	///
	/// - parameter factor: The lightening factor.
	/// - returns: The color lightened.
	@available(*, unavailable)
	public func lightened(by factor: CGFloat) -> Self {
		return self
	}
	
	/// Returns a darkened variant of this color by the specified factor.
	///
	/// - parameter factor: The darkening factor.
	/// - returns: The color darkened.
	@available(*, unavailable)
	public func darkened(by factor: CGFloat) -> Self {
		return self
	}
	
	// TODO: saturated
	/// Returns a saturated variant of this color.
	@available(*, unavailable)
	public func saturated() -> Self {
		return self
	}
	
	// TODO: desaturated
	/// Returns a desaturated variant of this color.
	@available(*, unavailable)
	public func desaturated() -> Self {
		return self
	}
	
	/// Returns this color layered below the specified color.
	///
	/// - parameter color: The color to layer on top.
	/// - returns: The two colors layered.
	public func layered(below color: Self) -> Self {
		let lhs = self.values
		let rhs = color.values
		
		let red: UInt8 = lhs.red + (rhs.red - lhs.red) * rhs.alpha
		let green: UInt8 = lhs.green + (rhs.green - lhs.green) * rhs.alpha
		let blue: UInt8 = lhs.blue + (rhs.blue - lhs.blue) * rhs.alpha
		
		return .init(red: .init(red), green: .init(green), blue: .init(blue))
	}
}
