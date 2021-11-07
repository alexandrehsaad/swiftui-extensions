// TweetType.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of the type of tweet.
@available(iOS 15, *)
@frozen
enum TweetType {
	/// The latest tweet.
	case latest
	
	var symbol: String {
		switch self {
		case .latest:
			return "number"
		}
	}
	
	var color: Color {
		return .cyan
	}
}

// MARK: - CustomStringConvertible

@available(iOS 15, *)
extension TweetType: CustomStringConvertible {
	public var description: String {
		switch self {
		case .latest:
			return "Latest Tweet"
		}
	}
}
