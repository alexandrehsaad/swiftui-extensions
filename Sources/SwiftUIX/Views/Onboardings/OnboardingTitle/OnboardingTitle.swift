// OnboardingTitle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
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
