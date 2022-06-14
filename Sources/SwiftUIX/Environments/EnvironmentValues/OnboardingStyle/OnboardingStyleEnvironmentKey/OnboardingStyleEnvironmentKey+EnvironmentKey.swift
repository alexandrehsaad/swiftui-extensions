// OnboardingStyleEnvironmentKey+EnvironmentKey.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

@available(iOS 15, watchOS 15, *)
extension OnboardingStyleEnvironmentKey: EnvironmentKey {
	#if os(iOS)
	internal static var defaultValue: AnyOnboardingStyle = .init(SinglePageOnboardingStyle())
	#elseif os(watchOS)
	internal static var defaultValue: AnyOnboardingStyle = .init(ScrollPageOnboardingStyle())
	#endif
}
