// TwitterUser+Codable.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import Foundation

extension TwitterUser {
	fileprivate enum CodingKeys: String, CodingKey {
		case id
		case photo
		case name
		case username
		case biography = "description"
	}
}

// MARK: - Decodable

extension TwitterUser: Decodable {
	init(from decoder: Decoder) throws {
		let container = try decoder.container(keyedBy: Self.CodingKeys.self)
		
		let id: UInt = try container.decode(UInt.self, forKey: .id)
		let photo: URL = try container.decode(URL.self, forKey: .photo)
		let name: String = try container.decode(String.self, forKey: .name)
		let username: String = try container.decode(String.self, forKey: .username)
		let biography: String = try container.decode(String.self, forKey: .biography)
		
		self.init(id: id, photo: photo, name: name, username: username, biography: biography)
	}
}

// MARK: - Encodable

extension TwitterUser: Encodable {
	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: Self.CodingKeys.self)
		
		try container.encode(self.id, forKey: .id)
		try container.encode(self.photo, forKey: .photo)
		try container.encode(self.name, forKey: .name)
		try container.encode(self.username, forKey: .username)
		try container.encode(self.biography, forKey: .biography)
	}
}
