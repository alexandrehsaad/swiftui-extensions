// OnboardingItem.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import Foundation

/// A representation of an onboarding item.
public struct OnboardingItem: Identifiable {
	public let id: UUID = .init()
	
	/// The symbol of this item.
	let symbol: String
	
	/// The title of this item.
	let title: String
	
	/// The subtitle of this item.
	let subtitle: String
}
