// EnvironmentValues+Onboard.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

extension EnvironmentValues {
	/// A boolean value indicating whether the user is onboarding.
	public var isOnboarding: Bool {
		get { return self[OnboardEnvironmentKey.self] }
		set { self[OnboardEnvironmentKey.self] = newValue }
	}
}
