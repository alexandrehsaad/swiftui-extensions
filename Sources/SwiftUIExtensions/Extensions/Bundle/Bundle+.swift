// Bundle+.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

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
