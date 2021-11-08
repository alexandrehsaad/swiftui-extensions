// TwitterUser.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

/// A representation of a Twitter user.
struct TwitterUser {
	/// The id of this user.
	let id: UInt
	
	/// The name of this user.
	let name: String
	
	/// The username of this user.
	///
	/// Usernames must be lowercase and must not include any spaces.
	let username: String
	
	/// The biography of this user.
	let biography: String
	
	/// Creates a new instance with the specified description, id, name and username.
	///
	/// - Parameters:
	///   - id: The id.
	///   - name: The name.
	///   - username: The username.
	///   - biography: The biography.
	init(
		id: UInt,
		name: String,
		username: String,
		biography: String
	) {
		self.id = id
		self.name = name
		self.username = username
		self.biography = biography
	}
	
	/// A placeholder Twitter user.
	static let placeholder: Self = .init(
		id: .zero,
		name: "John Doe",
		username: "@johndoe",
		biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
	)
}
