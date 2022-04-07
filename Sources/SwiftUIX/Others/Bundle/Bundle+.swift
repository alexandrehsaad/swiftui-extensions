// Bundle+.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

#if canImport(Foundation)
import Foundation

extension Bundle {
	/// The bundle identifier.
	static var bundleIdentifier: String? {
		return Self.main.object(forInfoDictionaryKey: "CFBundleIdentifier")
		as? String
	}
	
	/// The bundle name.
	static var bundleName: String? {
		return Self.main.object(forInfoDictionaryKey: "CFBundleName")
		as? String
	}
	
	/// The display name.
	static var displayName: String? {
		return Self.main.object(forInfoDictionaryKey: "CFBundleDisplayName")
		as? String
	}
}
#endif
