// OnboardingLabel.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

/// A representation of an onboarding label.
public struct OnboardingLabel: Identifiable {
	public let id: UUID = .init()
	
	/// The image of this label.
	internal let image: Image
	
	/// The title of this label.
	internal let title: Text
	
	/// The subtitle of this label.
	internal let subtitle: Text
	
	/// Creates a new instance with the specified image, title and subtitle.
	///
	/// - parameter image: The image.
	/// - parameter title: The title.
	/// - parameter subtitle: The subtitle.
	public init(
		image: String,
		title: LocalizedStringKey,
		subtitle: LocalizedStringKey
	) {
		self.image = Image(systemName: image)
		self.title = Text(title)
		self.subtitle = Text(subtitle)
	}
	
	/// Creates a new instance with the specified image, title and subtitle.
	///
	/// - parameter image: The image.
	/// - parameter title: The title.
	/// - parameter subtitle: The subtitle.
	public init(
		image: String,
		title: LocalizedStringKey,
		subtitle: String
	) {
		self.image = Image(systemName: image)
		self.title = Text(title)
		self.subtitle = Text(LocalizedStringKey(subtitle))
	}
	
	/// Creates a new instance with the specified image, title and subtitle.
	///
	/// - parameter image: The image.
	/// - parameter title: The title.
	/// - parameter subtitle: The subtitle.
	public init(
		image: String,
		title: String,
		subtitle: LocalizedStringKey
	) {
		self.image = Image(systemName: image)
		self.title = Text(LocalizedStringKey(title))
		self.subtitle = Text(subtitle)
	}
	
	/// Creates a new instance with the specified image, title and subtitle.
	///
	/// - parameter image: The image.
	/// - parameter title: The title.
	/// - parameter subtitle: The subtitle.
	public init(
		image: String,
		title: String,
		subtitle: String
	) {
		self.image = Image(systemName: image)
		self.title = Text(LocalizedStringKey(title))
		self.subtitle = Text(LocalizedStringKey(subtitle))
	}
}
