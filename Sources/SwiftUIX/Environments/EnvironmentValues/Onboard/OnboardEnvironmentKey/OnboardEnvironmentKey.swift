// OnboardEnvironmentKey.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

/// The onboard environment key.
struct OnboardEnvironmentKey {
	/// Creates a new instance
	init() {}
}

// MARK: - EnvironmentKey

extension OnboardEnvironmentKey: EnvironmentKey {
	static var defaultValue: Bool = false
}
