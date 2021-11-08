// TweetView.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of a tweet view.
@available(iOS 15, *)
public struct TweetView {
	/// The tweet type.
	private let tweetType: TweetType
	
	/// Creates a new instance with the specified tweet type and Twitter username.
	///
	/// - Parameters:
	///   - tweetType: The tweet type.
	///   - username: The Twitter user name.
	public init(_ tweetType: TweetType, from username: String) {
		self.tweetType = tweetType
	}
	
	/// The Twitter API manager.
	@ObservedObject
	private var twitter: TwitterManager = .init()
	
	/// A boolean value indicating whether this view is expanded.
	@State
	private var isExpanded: Bool = true
	
	/// Toggles the expansion.
	private func toggleExpansion() {
		withAnimation(.default) {
			self.isExpanded.toggle()
		}
	}
}

// MARK: - View

@available(iOS 15, *)
extension TweetView: View {
	public var body: some View {
		return GroupBox {
			VStack(alignment: .center, spacing: .zero) {
				HStack(alignment: .top, spacing: .zero) {
					Image(systemName: "person.circle.fill") // TODO: photo
						.font(.largeTitle)
						.padding(.trailing)
						.foregroundColor(.secondary)
					
					VStack(alignment: .leading, spacing: 2) { // FIXME: spacing
						HStack(alignment: .center, spacing: 4) { // FIXME: spacing
							Text(self.twitter.tweet?.user.name ?? TwitterUser.placeholder.name)
								.font(.footnote)
								.fontWeight(.semibold)
							
							Text(self.twitter.tweet?.user.username ?? TwitterUser.placeholder.username)
								.font(.footnote)
								.foregroundColor(.secondary)
						}
						
						Text(self.twitter.tweet?.content ?? Tweet.placeholder.content)
							.font(.footnote)
							.allowsTightening(true)
							.multilineTextAlignment(.leading)
							.lineLimit(self.isExpanded ? .max : 2)
					}
				}
				.onTapGesture {
					self.toggleExpansion()
				}
				
				self.footer
			}
		} label: {
			self.header(.latest)
		}
		.onAppear {
			// TODO: fetch tweet type from the specified user
		}
	}
}

@available(iOS 15, *)
extension TweetView {
	/// The header of this view.
	private func header(_ type: TweetType) -> some View {
		return HStack(alignment: .center, spacing: .zero) {
			/// Label View
			Label {
				Text(type.description)
			} icon: {
				Image(systemName: type.symbol)
			}
			.font(.caption.weight(.black))
			.foregroundColor(type.color)
		
			Spacer()
			
			/// Date View
			Text(Date(), style: .time) // TODO: date
				.font(.caption)
				.foregroundColor(.secondary)
		}
		.padding(.bottom, 8)
	}
	
	/// The footer of this view.
	private var footer: some View {
		return VStack(alignment: .center) {
			Divider()
				.padding(.vertical)
			
			HStack(alignment: .center, spacing: .zero) {
				TweetButton(.comments)
				Spacer()
				TweetButton(.retweets)
				Spacer()
				TweetButton(.favorites)
				Spacer()
				
				// Share Button
				Button {
					// TODO: action
				} label: {
					Image(systemName: "square.and.arrow.up")
				}
				.buttonStyle(TweetButtonStyle(tint: .blue))
			}
		}
	}
}
