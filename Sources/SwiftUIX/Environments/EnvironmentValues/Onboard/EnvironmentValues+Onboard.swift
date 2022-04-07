// EnvironmentValues+Onboard.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

extension EnvironmentValues {
	/// A boolean value indicating whether the user is onboarding.
	public var isOnboarding: Bool {
		get { return self[OnboardEnvironmentKey.self] }
		set { self[OnboardEnvironmentKey.self] = newValue }
	}
}
