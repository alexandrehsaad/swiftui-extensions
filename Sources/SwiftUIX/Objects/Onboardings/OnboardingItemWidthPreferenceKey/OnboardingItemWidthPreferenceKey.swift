// OnboardingItemWidthPreferenceKey.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A onboarding item width value preference key.
struct OnboardingItemWidthPreferenceKey {
	static var defaultValue: CGFloat = .zero
}

// MARK: - PreferenceKey

extension OnboardingItemWidthPreferenceKey: PreferenceKey {
	static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
		value = max(value, nextValue())
	}
}
