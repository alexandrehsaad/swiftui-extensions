// Tweet.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import Foundation

/// A representation of a Twitter tweet.
struct Tweet {
	/// The id of this tweet.
	let id: UInt
	
	/// The date of this tweet.
	let date: Date
	
	/// The author of this tweet.
	let user: TwitterUser
	
	/// The content of this tweet.
	let content: String
	
	/// Creates a new instance with the specified description, id, name and username.
	///
	/// - Parameters:
	///   - id: The id.
	///   - date: The date.
	///   - user: The user.
	///   - content: The content.
	init(
		id: UInt,
		date: Date,
		user: TwitterUser,
		content: String
	) {
		self.id = id
		self.date = date
		self.user = user
		self.content = content
	}
	
	/// A placeholder tweet.
	static let placeholder: Self = .init(
		id: .zero,
		date: .init(),
		user: .placeholder,
		content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
	)
}
