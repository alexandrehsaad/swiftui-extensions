// OnboardEnvironmentKey.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
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
