// CapsuleButtonStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

/// A button style that applies a capsule border artwork based on the button’s context.
@available(watchOS 8, *)
public struct CapsuleButtonStyle {
	/// The tint of the button.
	internal let tint: Color?

	/// Creates a new instance with the specified tint.
	///
	/// - parameter tint: The tint color.
	public init(tint: Color? = nil) {
		self.tint = tint
	}
	
	/// The default background color of this button.
	internal let defaultBackgroundColor: Color = .init(red: 34 / 255, green: 34 / 255, blue: 35 / 255, opacity: 1)
}
