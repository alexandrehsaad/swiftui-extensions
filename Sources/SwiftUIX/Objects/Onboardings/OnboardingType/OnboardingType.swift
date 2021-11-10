// OnboardingType.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import Foundation

/// A representation of an onboarding type.
public enum OnboardingType {
	/// Onboarding for initial welcome.
	case welcome
	
	/// Onboarding for consequent updates.
	case update
	
	/// Custom onboarding.
	case custom(String)
}

extension OnboardingType: CustomStringConvertible {
	public var description: String {
		switch self {
		case .welcome:
			return "Welcome to the \r\n\(Self.appName) App"
		case .update:
			return "What's New in \r\n\(Self.appName) App"
		case .custom(let string):
			return string
		}
	}
	
	static let appName: String = Bundle.displayName
	?? Bundle.bundleName
	?? "Unknown"
}
