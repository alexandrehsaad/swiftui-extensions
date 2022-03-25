// OnboardingTitle+LocalizedDescription.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

extension OnboardingTitle: LocalizedDescription {
	public var localizedDescription: LocalizedStringKey {
		switch self {
		case .welcome:
			return "welcome_to_\(Self.appName)"
		case .update:
			return "novelties_in_\(Self.appName)"
		default:
			fatalError()
		}
	}
}
