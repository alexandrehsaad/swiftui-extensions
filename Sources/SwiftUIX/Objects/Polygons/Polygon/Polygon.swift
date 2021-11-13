// Polygon.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of a polygon.
public struct Polygon {
	/// The number of sides of this polygon.
	private var sides: CGFloat
	
	/// Creates a new instance with the specified number of sides.
	///
	/// - Parameter sides: The number sides.
	public init(sides: UInt) {
		self.sides = .init(sides == .zero ? 1 : sides)
	}
}

// MARK: - Animatable

extension Polygon: Animatable {
	public var animatableData: CGFloat {
		get {
			return self.sides
		} set (newValue) {
			self.sides = newValue
		}
	}
}

// MARK: - Shape

extension Polygon: Shape {
	public func path(in rectangle: CGRect) -> Path {
		let width = rectangle.size.width
		let height = rectangle.size.height
		let hypotenuse: CGFloat = min(width, height) / 2
		let center: CGPoint = .init(x: width / 2, y: height / 2)
		
		return Path { (path) in
			for index in 0..<UInt(self.sides) {
				let angle: CGFloat = (.init(index) * (360 / self.sides) - 90) * .pi / 180
				
				let position: CGPoint = .init(
					x: center.x + cos(angle) * hypotenuse,
					y: center.y + sin(angle) * hypotenuse
				)
				
				if index == 0 {
					path.move(to: position)
				} else {
					path.addLine(to: position)
				}
			}
			
			path.closeSubpath()
		}
	}
}
