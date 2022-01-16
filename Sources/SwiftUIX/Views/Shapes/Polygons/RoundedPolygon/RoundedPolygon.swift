// RoundedPolygon.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

// TODO: rounded polygon
/// A representation of a rounded polygon.
@available(*, unavailable)
public struct RoundedPolygon {
	/// The number of sides of this polygon.
	private var sides: UInt
	
	/// The corner radius of this polygon.
	private var radius: CGFloat
	
	/// Creates a new instance with the specified number of sides.
	///
	/// - Parameter sides: The number of sides.
	public init(sides: UInt, radius: CGFloat) {
		self.sides = sides
		self.radius = radius
	}
}

// MARK: - Shape

@available(*, unavailable)
extension RoundedPolygon: Shape {
	public func path(in rectangle: CGRect) -> Path {
		return Path()
	}
}
