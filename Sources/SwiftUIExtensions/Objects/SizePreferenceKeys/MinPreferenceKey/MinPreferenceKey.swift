// MinPreferenceKey.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A minimum value preference key.
struct MinPreferenceKey: PreferenceKey {
	static var defaultValue: CGFloat = .zero
	
	static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
		value = min(value, nextValue())
	}
}
