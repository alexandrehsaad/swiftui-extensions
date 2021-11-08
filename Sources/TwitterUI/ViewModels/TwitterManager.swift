// TwitterManager.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import Combine

/// A representation of a Twitter user.
final class TwitterManager: ObservableObject {
	init() {}
	
	/// The tweet of this view.
	@Published
	var tweet: Tweet? = .placeholder
	
	/// Fetches the specified details from user username.
	private func fetchDetails(from user: String) {
		// TODO:
	}
	
	/// Fetches the specified details from user id.
	private func fetchDetails(from user: UInt) {
		// TODO:
	}
	
	/// Fetches the latest tweet from the specified user.
	private func fetchLatestTweet(from user: UInt) {
		// TODO:
	}
	
	/// Fetches the pinned tweet from the specified user.
	private func fetchPinnedTweet(from user: UInt) {
		// TODO:
	}
}
