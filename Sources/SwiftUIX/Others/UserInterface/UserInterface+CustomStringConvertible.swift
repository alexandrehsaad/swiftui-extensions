// UserInterface+CustomStringConvertible.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension UserInterface: CustomStringConvertible {
	public var description: String {
		switch self {
		case .mac:
			return "Mac"
		case .pad:
			return "iPad"
		case .phone:
			return "iPhone"
		case .tv:
			return "Apple TV"
		case .watch:
			return "Apple Watch"
		default:
			return ""
		}
	}
}
