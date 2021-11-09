// TweetMetric.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

/// A representation of the metric of a tweet.
@frozen
enum TweetMetric {
	/// The comments count.
	case comments
	
	/// The retweets count.
	case retweets
	
	/// The favorites count.
	case favorites
	
	var symbol: String {
		switch self {
		case .comments:
			return "message"
		case .retweets:
			return "arrow.2.squarepath"
		case .favorites:
			return "heart"
		}
	}
	
	var color: Color {
		switch self {
		case .comments:
			return .blue
		case .retweets:
			return .green
		case .favorites:
			return .pink
		}
	}
}

// MARK: - CaseIterable

extension TweetMetric: CaseIterable {}
