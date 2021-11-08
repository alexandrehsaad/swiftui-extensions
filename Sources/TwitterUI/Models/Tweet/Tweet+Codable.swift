// Tweet+Codable.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import Foundation

extension Tweet {
	fileprivate enum CodingKeys: String, CodingKey {
		case id
		case date = "created_at"
		case user = "author_id"
		case content = "text"
	}
}

// MARK: - Decodable

extension Tweet: Decodable {
	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Self.CodingKeys.self)
		
		let id: UInt = try container.decode(UInt.self, forKey: .id)
		let date: Date = try container.decode(Date.self, forKey: .date)
		let user: TwitterUser = try container.decode(TwitterUser.self, forKey: .user)
		let content: String = try container.decode(String.self, forKey: .content)
		
		self.init(id: id, date: date, user: user, content: content)
	}
}

// MARK: - Encodable

extension Tweet: Encodable {
	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: Self.CodingKeys.self)
		
		try container.encode(self.id, forKey: .id)
		try container.encode(self.date, forKey: .date)
		try container.encode(self.user, forKey: .user)
		try container.encode(self.content, forKey: .content)
	}
}
