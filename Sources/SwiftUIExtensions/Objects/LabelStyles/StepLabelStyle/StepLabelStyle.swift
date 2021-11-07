// StepLabelStyle.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A label style that shows both the title and numbered icon of the label using a system-standard layout.
public struct StepLabelStyle {
	/// The step.
	private let step: String
	
	/// Creates a new instance with the specified step.
	///
	/// - Parameter step: The step number.
	public init(step: UInt) {
		precondition(step <= 50)
		self.step = step.description
	}
	
	/// Creates a new instance with the specified step.
	///
	/// - Parameter step: The step character.
	public init(step: Character) {
		precondition("A"..."Z" ~= step)
		self.step = step.description.lowercased()
	}
}

// MARK: - LabelStyle

extension StepLabelStyle: LabelStyle {
	public func makeBody(configuration: Configuration) -> some View {
		return HStack(alignment: .center) {
			Image(systemName: "\(step.description).circle.fill")
				.font(.title2)
				.foregroundColor(.primary)
			
			configuration.title
				.font(.headline)
				.foregroundColor(.primary)
				.lineLimit(1)
		}
	}
}
