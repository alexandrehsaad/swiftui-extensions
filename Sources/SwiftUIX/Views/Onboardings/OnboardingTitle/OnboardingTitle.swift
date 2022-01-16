// OnboardingTitle.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import Foundation

/// A representation of an onboarding type.
public enum OnboardingTitle {
	/// Onboarding for initial welcome.
	case welcome
	
	/// Onboarding for consequent updates.
	case update
	
	/// Custom onboarding.
	case custom(String)
	
	static let appName: String = Bundle.displayName
		?? Bundle.bundleName
		?? "Unknown"
}
