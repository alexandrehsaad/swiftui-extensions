// OnboardingStyleConfiguration.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

/// The properties of an onboarding.
public struct OnboardingStyleConfiguration {
	/// The onboarding title.
	public var title: Text
	
	/// The onboarding labels.
	public var labels: Array<OnboardingLabel>
	
	/// The terms in the footer.
	public let terms: Text?
	
	/// The button in the footer.
	public var button: Button<Text>
	
	/// Creates a new instance with the specified title, labels and terms.
	///
	/// - parameter title: The onboarding title.
	/// - parameter labels: The onboarding labels.
	/// - parameter terms: The terms in the footer.
	/// - parameter button: The button in the footer.
	/// - warning: Set no more than three labels.
	internal init(
		title: Text,
		labels: Array<OnboardingLabel>,
		terms: Text? = nil,
		button: Button<Text>
	) {
		assert(labels.count <= 3)
		
		self.title = title
		self.labels = labels
		self.terms = terms
		self.button = button
	}
}
