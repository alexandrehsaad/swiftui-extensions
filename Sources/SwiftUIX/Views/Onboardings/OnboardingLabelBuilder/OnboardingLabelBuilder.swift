// OnboardingLabelBuilder.swift
// Extensions
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

///
@resultBuilder
internal struct OnboardingLabelBuilder {
	public static func buildBlock(_ labels: OnboardingLabel...) -> Array<OnboardingLabel> {
		return labels
	}
}
