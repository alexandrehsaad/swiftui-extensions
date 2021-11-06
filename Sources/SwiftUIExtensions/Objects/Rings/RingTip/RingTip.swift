// RingTip.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of a ring tip.
struct RingTip {
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

extension RingTip: Animatable {
	var animatableData: CGFloat {
		get {
			return self.value
		} set (newValue) {
			self.value = newValue
		}
	}
}

// MARK: - Shape

extension RingTip: Shape {
	func path(in rect: CGRect) -> Path {
		let angle: CGFloat = 360 * self.percent * .pi / 180
		let controlRadius: CGFloat = rect.width / 2 - self.thickness / 2
		let center: CGPoint = .init(x: rect.width / 2, y: rect.height / 2)
		
		let x: CGFloat = center.x + controlRadius * cos(angle) - self.thickness / 2
		let y: CGFloat = center.y + controlRadius * sin(angle) - self.thickness / 2
		
		let ellipse: CGRect = .init(x: x, y: y, width: self.thickness, height: self.thickness)
		
		return Path { (path) in
			path.addEllipse(in: ellipse)
		}
	}
}
