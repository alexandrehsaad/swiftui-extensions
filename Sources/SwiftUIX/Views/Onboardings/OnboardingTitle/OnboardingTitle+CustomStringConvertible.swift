// OnboardingTitle+CustomStringConvertible.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension OnboardingTitle: CustomStringConvertible {
	public var description: String {
		switch self {
		case .welcome:
			return "Welcome to the \r\n\(Self.appName) App"
		case .update:
			return "What's New in \r\n\(Self.appName) App"
		case .custom(let string):
			return string
		}
	}
}
