// DragDirection.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

/// A representation of a drag direction.
@frozen
public enum DragDirection: CaseIterable {
	/// From the bottom up.
	case bottomUp
	
	/// From left to right.
	case leftRight
	
	/// From right to left.
	case rightLeft
	
	/// From the top down.
	case topDown
}
