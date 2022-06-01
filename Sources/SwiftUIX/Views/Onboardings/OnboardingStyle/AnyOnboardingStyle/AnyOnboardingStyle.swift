// AnyOnboardingStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

///
public struct AnyOnboardingStyle {
	///
	internal let styleMakeBody: (OnboardingStyle.Configuration) -> AnyView
	
	/// Creates a new instance with the specified onboarding style.
	///
	/// - Parameter style: The style.
	public init<Style>(_ style: Style)
	where Style: OnboardingStyle {
		self.styleMakeBody = style.makeTypeErasedBody
	}
}
