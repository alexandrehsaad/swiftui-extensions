// ColorfulLabelStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

/// A label style that shows both the title and icon of the label using a system-standard layout.
@available(iOS 15, *)
internal struct ColorfulLabelStyle {
	/// The tint of this label.
	internal var tint: Color
	
	/// Creates a new instance with the specified tint.
	///
	/// - parameter color: The tint.
	internal init(tint: Color) {
		self.tint = tint
	}
	
	/// The cliped shape.
	internal var clipShape: String {
		#if os(watchOS)
		return "circle.fill"
		#else
		return "app.fill"
		#endif
	}
}
