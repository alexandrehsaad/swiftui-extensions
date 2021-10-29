// Polygon+Shape.swift
// SwiftUIExtensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

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
