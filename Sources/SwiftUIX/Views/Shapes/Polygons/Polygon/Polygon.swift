// Polygon.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

/// A representation of a polygon.
public struct Polygon {
	/// The number of sides of this polygon.
	internal var sides: CGFloat
	
	/// Creates a new instance with the specified number of sides.
	///
	/// - parameter sides: The number sides.
	public init(sides: UInt) {
		self.sides = .init(sides == .zero ? 1 : sides)
	}
}
