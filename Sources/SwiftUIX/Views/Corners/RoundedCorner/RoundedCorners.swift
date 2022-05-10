// RoundedCorners.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

/// A representation of rounded corners.
struct RoundedCorners {
	/// The bottom leading corner of the view.
	private var bottomLeading: CGFloat = 0
	
	/// The bottom trailing corner of the view.
	private var bottomTrailing: CGFloat = 0
	
	/// The top leading corner of the view.
	private var topLeading: CGFloat = 0
	
	/// The top trailing corner of the view.
	private var topTrailing: CGFloat = 0
	
	/// Creates a new instance with the specified corner and radius.
	///
	/// - parameter corner: The corner.
	/// - parameter radius: The corner radius.
	init(_ corner: Corner, _ radius: CGFloat) {
		switch corner {
		case .bottomLeading:
			self.bottomLeading = radius
		case .bottomTrailing:
			self.bottomTrailing = radius
		case .topLeading:
			self.topLeading = radius
		case .topTrailing:
			self.topTrailing = radius
		}
	}
	
	/// Creates a new instance with the specified corner group and radius.
	///
	/// - parameter group: The corner group.
	/// - parameter radius: The corner radius.
	init(_ group: CornerGroup, _ radius: CGFloat) {
		for corner in group.corners {
			switch corner {
			case .bottomLeading:
				self.bottomLeading = radius
			case .bottomTrailing:
				self.bottomTrailing = radius
			case .topLeading:
				self.topLeading = radius
			case .topTrailing:
				self.topTrailing = radius
			}
		}
	}
}

// MARK: - Shape

extension RoundedCorners: Shape {
	func path(in rect: CGRect) -> Path {
		let width = rect.size.width
		let height = rect.size.height
		
		let maxRadius = min(height / 2, width / 2)

		let bottomLeading: CGFloat = min(self.bottomLeading, maxRadius)
		let bottomTrailing: CGFloat = min(self.bottomTrailing, maxRadius)
		let topLeading: CGFloat = min(self.topLeading, maxRadius)
		let topTrailing: CGFloat = min(self.topTrailing, maxRadius)
		
		return Path { (path) in
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
		}
	}
}
