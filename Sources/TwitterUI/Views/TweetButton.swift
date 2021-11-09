// TweetButton.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representaion of a tweet button.
struct TweetButton {
	/// The metric of this tweet button.
	let metric: TweetMetric
	
	/// Creates a new instance with the specified tweet.
	///
	/// - Parameter metric: The tweet metric.
	init(_ metric: TweetMetric) {
		self.metric = metric
	}
}

// MARK: - View

extension TweetButton: View {
	var body: some View {
		return HStack(alignment: .center, spacing: nil) {
			Button {
				// TODO: action
			} label: {
				Image(systemName: self.metric.symbol)
			}
			.buttonStyle(TweetButtonStyle(tint: self.metric.color))
			
			Text("12K") // FIXME: generate letter
				.font(.caption)
				.foregroundColor(.secondary)
		}
	}
}
