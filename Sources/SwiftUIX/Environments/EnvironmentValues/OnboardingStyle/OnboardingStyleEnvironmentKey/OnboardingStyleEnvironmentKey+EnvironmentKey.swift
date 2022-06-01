// OnboardingStyleEnvironmentKey+EnvironmentKey.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension OnboardingStyleEnvironmentKey: EnvironmentKey {
	internal static var defaultValue: AnyOnboardingStyle = .init(SinglePageOnboardingStyle())
}
