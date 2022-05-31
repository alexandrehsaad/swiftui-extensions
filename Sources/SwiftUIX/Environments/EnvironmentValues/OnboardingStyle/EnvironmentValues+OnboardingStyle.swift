// EnvironmentValues+OnboardingStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

extension EnvironmentValues {
	/// The onboarding style environment value.
	internal var onboardingStyle: AnyOnboardingStyle {
		get { return self[OnboardingStyleEnvironmentKey.self] }
		set { self[OnboardingStyleEnvironmentKey.self] = newValue }
	}
}
