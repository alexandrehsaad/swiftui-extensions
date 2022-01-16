// CapsuleButtonStyle.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A button style that applies a capsule border artwork based on the button’s context.
@available(watchOS 8, *)
public struct CapsuleButtonStyle {
	/// The tint of the button.
	private let tint: Color?

	/// Creates a new instance with the specified tint.
	///
	/// - Parameter tint: The tint color.
	public init(tint: Color? = nil) {
		self.tint = tint
	}
	
	/// The default background color of this button.
	private let defaultBackgroundColor: Color = .init(red: 34 / 255, green: 34 / 255, blue: 35 / 255, opacity: 1)
}

// MARK: - ButtonStyle

@available(watchOS 8, *)
extension CapsuleButtonStyle: ButtonStyle {
	public func makeBody(configuration: Self.Configuration) -> some View {
		return configuration.label
			.font(.body)
			.foregroundColor(self.tint ?? .primary)
			.padding()
			.padding(.horizontal)
			.padding(.horizontal)
			.background(self.tint?.opacity(0.18) ?? self.defaultBackgroundColor)
			.clipShape(Capsule(style: .circular))
			.opacity(configuration.isPressed ? 0.75 : 1)
			.scaleEffect(configuration.isPressed ? 0.97 : 1, anchor: .center)
	}
}
