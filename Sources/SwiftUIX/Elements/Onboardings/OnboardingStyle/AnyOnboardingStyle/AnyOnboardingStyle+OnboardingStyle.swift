// AnyOnboardingStyle+OnboardingStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension AnyOnboardingStyle: OnboardingStyle {
	public func makeBody(configuration: OnboardingStyle.Configuration) -> AnyView {
		return self.styleMakeBody(configuration)
	}
}
