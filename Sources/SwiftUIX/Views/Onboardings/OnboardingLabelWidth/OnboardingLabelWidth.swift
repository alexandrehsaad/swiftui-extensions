// OnboardingLabelWidth.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

/// A onboarding item width value preference key.
struct OnboardingLabelWidth {
	static var defaultValue: CGFloat = .zero
}

// MARK: - PreferenceKey

extension OnboardingLabelWidth: PreferenceKey {
	static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
		value = max(value, nextValue())
	}
}
