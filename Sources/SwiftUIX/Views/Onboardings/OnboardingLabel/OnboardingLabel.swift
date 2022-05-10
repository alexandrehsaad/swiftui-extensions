// OnboardingLabel.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import Foundation

/// A representation of an onboarding item.
public struct OnboardingLabel: Identifiable {
	public let id: UUID = .init()
	
	/// The symbol of this item.
	let symbol: String
	
	/// The title of this item.
	let title: String
	
	/// The subtitle of this item.
	let subtitle: String
	
	/// Creates a new instance with the specified symbol, title and subtitle.
	///
	/// - parameter symbol: The system name symbol.
	/// - parameter title: The title text.
	/// - parameter subtitle: The subtitle text.
	public init(symbol: String, title: String, subtitle: String) {
		self.symbol = symbol
		self.title = title
		self.subtitle = subtitle
	}
}
