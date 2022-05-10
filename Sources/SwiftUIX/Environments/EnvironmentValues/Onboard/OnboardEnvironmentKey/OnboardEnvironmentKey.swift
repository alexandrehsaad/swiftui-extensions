// OnboardEnvironmentKey.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

/// The onboard environment key.
internal struct OnboardEnvironmentKey {
	/// Creates a new instance.
	internal init() {}
}

// MARK: - EnvironmentKey

extension OnboardEnvironmentKey: EnvironmentKey {
	internal static var defaultValue: Bool = false
}
