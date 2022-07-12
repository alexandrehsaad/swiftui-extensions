// View+OnboardingStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension View {
	/// Sets the style for onboardings within this view.
	public func onboardingStyle<Style>(_ style: Style) -> some View
	where Style: OnboardingStyle {
		return self.environment(\.onboardingStyle, .init(style))
	}
}
