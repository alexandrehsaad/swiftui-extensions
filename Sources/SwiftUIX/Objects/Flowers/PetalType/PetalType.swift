// PetalShape.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

/// A representation of a petal shape.
public enum PetalShape {
	/// Circle shape.
	case circle
	
	/// Polygon shape with the specified number of sides.
	case polygon(sides: UInt = 5)
}
