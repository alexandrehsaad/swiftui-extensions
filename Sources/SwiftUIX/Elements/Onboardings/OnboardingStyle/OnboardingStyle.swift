// OnboardingStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//


import SwiftUI

/// A type that applies a custom appearance to all onboardings within a view.
public protocol OnboardingStyle {
	/// The properties of an onboarding.
	typealias Configuration = OnboardingStyleConfiguration
	
	/// A view that represents the body of an onboarding.
	associatedtype Body: View
	
	/// Creates a view that represents the body of an onboarding.
	func makeBody(configuration: Self.Configuration) -> Self.Body
}

extension OnboardingStyle {
	internal func makeTypeErasedBody(configuration: OnboardingStyle.Configuration) -> AnyView {
		return .init(self.makeBody(configuration: configuration))
	}
}
