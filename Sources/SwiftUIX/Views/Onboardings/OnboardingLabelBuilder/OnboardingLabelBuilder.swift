// OnboardingLabelBuilder.swift
// Extensions
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

///
@resultBuilder
internal struct OnboardingLabelBuilder {
	internal static func buildBlock(_ labels: OnboardingLabel...) -> Array<OnboardingLabel> {
		return labels
	}
}
