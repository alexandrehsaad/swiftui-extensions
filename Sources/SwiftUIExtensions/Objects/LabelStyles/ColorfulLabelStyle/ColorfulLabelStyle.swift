// ColorfulLabelStyle.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A label style that shows both the title and icon of the label using a system-standard layout.
@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
struct ColorfulLabelStyle {
	/// The tint of this label.
	var tint: Color
	
	/// Creates a new instance with the specified tint.
	///
	/// - Parameter color: The tint.
	init(tint: Color) {
		self.tint = tint
	}
	
	/// The cliped shape.
	private var clipShape: String {
		#if os(watchOS)
		return "circle.fill"
		#else
		return "app.fill"
		#endif
	}
}

// MARK: - LabelStyle

@available(iOS 14, macOS 11, tvOS 14, watchOS 7, *)
extension ColorfulLabelStyle: LabelStyle {
	func makeBody(configuration: Configuration) -> some View {
		return Label {
			configuration.title
		} icon: {
			ZStack(alignment: .center) {
				Image(systemName: self.clipShape)
					.font(.title)
					.foregroundColor(self.tint)
				
				configuration.icon
					.font(.footnote.weight(.semibold))
					.foregroundColor(.white)
			}
		}
	}
}
