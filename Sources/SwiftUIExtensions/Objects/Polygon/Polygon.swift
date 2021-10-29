// Polygon.swift
// SwiftUIExtensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of a polygon.
public struct Polygon {
	/// The number of sides of this polygon.
	internal var sides: UInt
	
	/// Creates a new instance with the specified sides.
	///
	/// - Parameter sides: The sides.
	public init(sides: UInt) {
		self.sides = sides
	}
}
