// TweetButtonStyle.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// The tweets button style, based on the button’s context.
struct TweetButtonStyle {
	/// The tint of this button.
	private let tint: Color
	
	/// Creates a new instance with the specified color
	///
	/// - Parameter tint: The tint of this button when tapped.
	init(tint: Color) {
		self.tint = tint
	}
}

// MARK: - ButtonStyle

extension TweetButtonStyle: ButtonStyle {
	func makeBody(configuration: Self.Configuration) -> some View {
		return configuration.label
			.font(.caption)
			.foregroundColor(configuration.isPressed ?
			    self.tint : .secondary
			)
			.background(
				Image(systemName: "circle.fill")
					.font(.title)
					.foregroundColor(configuration.isPressed ?
					    self.tint.opacity(0.1) : .clear
					)
			)
	}
}
