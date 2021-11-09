// NavigationView+Onboardable.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

extension NavigationView {
	/// Marks this view as onboardable, which configures the display of an onboarding sheet.
	///
	/// - Parameters:
	///   - isOnboardable: A binding to a boolean value that determines whether to present this sheet.
	///   - onboardingType: The onboarding type.
	///   - items: The onboarding items.
	///   - terms: The terms in the footer.
	public func onboardable(
		_ isOnboardable: Binding<Bool>,
		title: OnboardingType = .welcome,
		items: [OnboardingItem],
		terms: String? = nil
	) -> some View {
		return self.sheet(isPresented: isOnboardable) {
			OnboardingView(isOnboardable, title: title, items: items, terms: terms)
	   }
	}
}
