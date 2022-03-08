// Animation+.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

extension Animation {
	/// A  ripple animation.
	///
	/// - Parameter index: The index of the view to ripple.
	/// - Returns: A ripple animation.
	public static func ripple(index: UInt) -> Self {
		return Self
			.spring(dampingFraction: 0.5)
			.speed(2)
			.delay(0.03 * Double(index))
	}
}
