// MaxPreferenceKey.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A maximum value preference key.
struct MaxPreferenceKey: PreferenceKey {
	static var defaultValue: CGFloat = .zero
	
	static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
		value = max(value, nextValue())
	}
}
