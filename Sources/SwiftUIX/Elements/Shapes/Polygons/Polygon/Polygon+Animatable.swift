// Polygon+Animatable.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension Polygon: Animatable {
	public var animatableData: CGFloat {
		get {
			return self.sides
		} set (newValue) {
			self.sides = newValue
		}
	}
}
