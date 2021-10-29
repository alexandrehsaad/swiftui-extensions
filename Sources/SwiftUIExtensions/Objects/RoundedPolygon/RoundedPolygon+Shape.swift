// RoundedPolygon+Shape.swift
// SwiftUIExtensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

@available(*, unavailable)
extension RoundedPolygon: Shape {
	public func path(in rectangle: CGRect) -> Path {
		return Path()
	}
}
