// OnboardingView.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

/// A representation of an onboarding view.
@available(iOS 15, *)
public struct OnboardingView {
	/// The onboarding style.
	@Environment(\.onboardingStyle)
	internal var onboardingStyle: AnyOnboardingStyle
	
	///
	internal let configuration: OnboardingStyleConfiguration
	
	///
	///
	/// - parameter configuration:
	internal init(configuration: OnboardingStyleConfiguration) {
		self.configuration = configuration
	}
	
	/// Creates a new instance with the specified title, labels and terms.
	///
	/// - parameter title: The onboarding title.
	/// - parameter labels: The onboarding labels.
	/// - parameter terms: The terms in the footer.
	/// - parameter button: The button in the footer.
	public init(
		title: Text,
		@OnboardingLabelBuilder labels builder: @escaping () -> Array<OnboardingLabel>,
		terms: Text? = nil,
		button: @escaping () -> Button<Text>
	) {
		self.configuration = .init(
			title: title,
			labels: builder(),
			terms: terms,
			button: button()
		)
	}
	
	/// Creates a new instance with the specified title, labels and terms.
	///
	/// - parameter title: The onboarding title.
	/// - parameter labels: The onboarding labels.
	/// - parameter terms: The terms in the footer.
	/// - parameter button: The button in the footer.
	public init(
		title: LocalizedStringKey,
		@OnboardingLabelBuilder labels builder: @escaping () -> Array<OnboardingLabel>,
		terms: LocalizedStringKey? = nil,
		button: @escaping () -> Button<Text>
	) {
		self.configuration = .init(
			title: Text(title),
			labels: builder(),
			terms: terms != nil ? Text(terms!) : nil,
			button: button()
		)
	}
	
	/// Creates a new instance with the specified title, labels and terms.
	///
	/// - parameter title: The onboarding title.
	/// - parameter labels: The onboarding labels.
	/// - parameter terms: The terms in the footer.
	/// - parameter button: The button in the footer.
	public init(
		title: String,
		@OnboardingLabelBuilder labels builder: @escaping () -> Array<OnboardingLabel>,
		terms: String? = nil,
		button: @escaping () -> Button<Text>
	) {
		self.configuration = .init(
			title: Text(LocalizedStringKey(title)),
			labels: builder(),
			terms: terms != nil ? Text(LocalizedStringKey(terms!)) : nil,
			button: button()
		)
	}
}
