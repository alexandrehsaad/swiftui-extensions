// PetalType.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

/// A representation of a petal type.
public enum PetalType {
	/// Circle shape.
	case circle
	
	/// Polygon shape with the specified number of sides.
	case polygon(sides: UInt)
}
