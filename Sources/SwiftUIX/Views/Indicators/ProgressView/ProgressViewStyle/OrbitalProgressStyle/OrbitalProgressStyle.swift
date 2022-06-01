// OrbitalProgressStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

// TODO: test on other platforms
/// A progress view that visually indicates its progress using an orbit.
@available(iOS 15, *)
public struct OrbitalProgressStyle {
	/// The tint of this progress view.
	internal let tint: Color

	/// Creates a new instance with the specified tint.
	public init(tint: Color = .accentColor) {
		self.tint = tint
	}
}
