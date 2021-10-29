// DragDirection.swift
// SwiftUIExtensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of a drag direction.
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
