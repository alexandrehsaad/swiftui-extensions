// Flasher.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

/// A representation of a flashing view.
internal struct Flasher {
	///
	internal var isFlashing: Bool
	
	/// Creates a new instance with the specified boolean.
	///
	/// - parameter isFlashing: A boolean value.
	internal init(_ isFlashing: Bool) {
		self.isFlashing = isFlashing
	}
	
	/// The opcaity of this instance.
	@State
	internal var opacity: Double = 1
	
	///
	///
	/// - parameter date: The date.
	/// - returns: Seconds.
	internal func seconds(for date: Date) -> Double {
		let seconds: Int = Calendar.current.component(.second, from: date)
		return .init(seconds) / 60
	}
}
