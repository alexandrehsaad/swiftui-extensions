// Color+.swift
// SwiftUI 3Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

extension Color {
	/// A context-dependent brown color suitable for use in UI elements.
	@available(iOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(macOS, obsoleted: 12, message: "Available in SwiftUI 3")
	@available(tvOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(watchOS, obsoleted: 8, message: "Available in SwiftUI 3")
	public static var brown: Color {
		return .init("brown", bundle: .module)
	}
	
	/// A  context-dependent first-level shade of grey color suitable for use in UI elements.
	public static var gray1: Color {
		return .init("gray_1", bundle: .module)
	}
	
	/// A  context-dependent second-level shade of grey color suitable for use in UI elements.
	public static var gray2: Color {
		return .init("gray_2", bundle: .module)
	}
	
	/// A  context-dependent third-level shade of grey color suitable for use in UI elements.
	public static var gray3: Color {
		return .init("gray_3", bundle: .module)
	}
	
	/// A  context-dependent fourth-level shade of grey color suitable for use in UI elements.
	public static var gray4: Color {
		return .init("gray_4", bundle: .module)
	}
	
	/// A  context-dependent fifth-level shade of grey color suitable for use in UI elements.
	public static var gray5: Color {
		return .init("gray_5", bundle: .module)
	}
	
	/// A  context-dependent sixth-level shade of grey color suitable for use in UI elements.
	public static var gray6: Color {
		return .init("gray_6", bundle: .module)
	}
	
	/// A context-dependent indigo color suitable for use in UI elements.
	@available(iOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(macOS, obsoleted: 12, message: "Available in SwiftUI 3")
	@available(tvOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(watchOS, obsoleted: 8, message: "Available in SwiftUI 3")
	public static var indigo: Color {
		return .init("indigo", bundle: .module)
	}
	
	/// A context-dependent mint color suitable for use in UI elements.
	@available(iOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(macOS, obsoleted: 12, message: "Available in SwiftUI 3")
	@available(tvOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(watchOS, obsoleted: 8, message: "Available in SwiftUI 3")
	public static var mint: Color {
		return .init("mint", bundle: .module)
	}
	
	/// A context-dependent teal color suitable for use in UI elements.
	@available(iOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(macOS, obsoleted: 12, message: "Available in SwiftUI 3")
	@available(tvOS, obsoleted: 15, message: "Available in SwiftUI 3")
	@available(watchOS, obsoleted: 8, message: "Available in SwiftUI 3")
	public static var teal: Color {
		return .init("teal", bundle: .module)
	}
}
