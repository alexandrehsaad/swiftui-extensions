// OnboardingType+CustomStringConvertible.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

extension OnboardingType: CustomStringConvertible {
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
