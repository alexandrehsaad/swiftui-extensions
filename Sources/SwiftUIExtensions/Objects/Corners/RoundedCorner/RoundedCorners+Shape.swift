// RoundedCorners+Shape.swift
// SwiftUIExtensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

extension RoundedCorners: Shape {
	func path(in rect: CGRect) -> Path {
		let width = rect.size.width
		let height = rect.size.height
		
		let maxRadius = min(height / 2, width / 2)

		let bottomLeading: CGFloat = min(self.bottomLeading, maxRadius)
		let bottomTrailing: CGFloat = min(self.bottomTrailing, maxRadius)
		let topLeading: CGFloat = min(self.topLeading, maxRadius)
		let topTrailing: CGFloat = min(self.topTrailing, maxRadius)
		
		var path = Path()

		path.move(to: CGPoint(x: width / 2, y: 0))
		path.addLine(to: CGPoint(x: width - topTrailing, y: 0))
		path.addArc(
			center: CGPoint(x: width - topTrailing, y: topTrailing),
			radius: topTrailing,
			startAngle: Angle(degrees: -90),
			endAngle: Angle(degrees: 0),
			clockwise: false
		)

		path.addLine(to: CGPoint(x: width, y: height - bottomTrailing))
		path.addArc(
			center: CGPoint(x: width - bottomTrailing, y: height - bottomTrailing),
			radius: bottomTrailing,
			startAngle: Angle(degrees: 0),
			endAngle: Angle(degrees: 90),
			clockwise: false
		)

		path.addLine(to: CGPoint(x: bottomLeading, y: height))
		path.addArc(
			center: CGPoint(x: bottomLeading, y: height - bottomLeading),
			radius: bottomLeading,
			startAngle: Angle(degrees: 90),
			endAngle: Angle(degrees: 180),
			clockwise: false
		)

		path.addLine(to: CGPoint(x: 0, y: topLeading))
		path.addArc(
			center: CGPoint(x: topLeading , y: topLeading),
			radius: topLeading,
			startAngle: Angle(degrees: 180),
			endAngle: Angle(degrees: 270),
			clockwise: false
		)

		return path
	}
}
