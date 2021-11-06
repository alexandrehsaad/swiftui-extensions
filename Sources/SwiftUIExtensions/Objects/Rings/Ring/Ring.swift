// Ring.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of a ring.
struct Ring {
	/// The completed value.
	private var value: CGFloat
	
	/// The total value.
	private var total: CGFloat
	
	/// The thickness of this ring.
	private let thickness: CGFloat
	
	/// Creates a new instance with the specified percent and thickness.
	///
	/// - Parameters:
	///   - value: The completed value.
	///   - thickness: The thickness.
	init<Value>(value: Value, total: Value = 1, thickness: CGFloat = 5)
	where Value: BinaryFloatingPoint {
		self.value = .init(value)
		self.total = .init(total)
		self.thickness = thickness
	}
	
	/// The value in percent.
	private var percent: CGFloat {
		return self.value / self.total
	}
}

// MARK: - Animatable

extension Ring: Animatable {
	var animatableData: CGFloat {
		get {
			return self.value
		} set (newValue) {
			self.value = newValue
		}
	}
}

// MARK: - Shape

extension Ring: Shape {
	func path(in rect: CGRect) -> Path {
		let width: CGFloat = rect.width
		let height: CGFloat = rect.height
		
		let center: CGPoint = .init(x: width / 2, y: height / 2)
		let radius: CGFloat = width / 2 - self.thickness / 2
		let startAngle: Angle = .zero
		let endAngle: Angle = .init(degrees: 360 * .init(self.percent))
		
		return Path { (path) in
			path.addArc(
				center: center,
				radius: radius,
				startAngle: startAngle,
				endAngle: endAngle,
				clockwise: false
			)
		}
		.strokedPath(StrokeStyle(
			lineWidth: self.thickness,
			lineCap: .round,
			lineJoin: .round
		))
	}
}
