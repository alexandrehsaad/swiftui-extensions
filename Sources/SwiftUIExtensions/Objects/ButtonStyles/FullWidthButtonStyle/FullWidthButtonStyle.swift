// FullWidthButtonStyle.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A button style that applies full width border prominent artwork based on the button’s context.
public struct FullWidthButtonStyle {
	/// Creates a new instance.
	public init() {}
}

// MARK: - ButtonStyle

extension FullWidthButtonStyle: ButtonStyle {
	public func makeBody(configuration: Self.Configuration) -> some View {
		configuration.label
			.font(.headline)
			.padding(.vertical, 16)
			.frame(maxWidth: .infinity)
			.overlay(configuration.isPressed ? Color.white.opacity(0.2) : .clear)
			.foregroundColor(.white)
			.background(Color.accentColor)
			.cornerRadius(12)
	}
}
