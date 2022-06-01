// Polygon+Shape.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension Polygon: Shape {
	public func path(in rectangle: CGRect) -> Path {
		let width = rectangle.size.width
		let height = rectangle.size.height
		let hypotenuse: CGFloat = min(width, height) / 2
		let center: CGPoint = .init(x: width / 2, y: height / 2)
		
		let side: UInt = self.sides == self.sides.rounded(.down) ? 0 : 1
		
		return Path { (path) in
			for index in 0..<UInt(self.sides) + side {
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
