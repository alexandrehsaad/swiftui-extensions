// Polygon.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of a polygon.
public struct Polygon {
	/// The number of sides of this polygon.
	private var sides: UInt
	
	/// Creates a new instance with the specified sides.
	///
	/// - Parameter sides: The sides.
	public init(sides: UInt) {
		self.sides = sides
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
			for index in 0..<self.sides {
				let angle: CGFloat = (.init(index) * (360 / .init(self.sides)) - 90) * .pi / 180
				
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
