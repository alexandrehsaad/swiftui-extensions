// EditMode+.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

@available(macOS, unavailable)
@available(watchOS, unavailable)
extension EditMode {
	/// Toggles the mode to its opposite value.
	public mutating func toggle() {
		switch self {
		case .inactive:
			self = .active
		case .transient:
			self = .inactive
		case .active:
			self = .inactive
		@unknown default:
			self = .inactive
		}
	}
}
