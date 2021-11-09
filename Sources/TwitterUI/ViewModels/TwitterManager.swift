// TwitterManager.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import Combine
import Foundation

/// A representation of a Twitter API manager.
@available(iOS 15, *)
final class TwitterManager: ObservableObject {
	/// Creates a new instance.
	init() {}
	
	/// The tweet of this view.
	@Published
	var tweet: Tweet? = .placeholder
	
	/// Fetches data from the specified url.
	///
	/// - Parameter url: The remote url.
	/// - Returns: The data fetched.
	private func fetchData(from url: URL) async throws -> Data {
		let (data, response) = try await URLSession.shared.data(from: url)

		guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
			throw NetworkingError.invalidServerResponse
		}
		
		return data
	}
	
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
