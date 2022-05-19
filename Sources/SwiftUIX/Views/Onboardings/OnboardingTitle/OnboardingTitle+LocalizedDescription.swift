// OnboardingTitle+LocalizedDescription.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

extension OnboardingTitle: CustomKeyLocalizable {
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
