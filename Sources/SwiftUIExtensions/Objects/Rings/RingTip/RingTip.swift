// RingTip.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of a ring tip.
struct RingTip {
	/// The fraction completed.
	private var percent: CGFloat
	
	/// The thickness of this ring.
	private let thickness: CGFloat
	
	/// Creates a new instance with the specified percent and thickness.
	///
	/// - Parameters:
	///   - percent: The fraction completed.
	///   - thickness: The thickness.
	init<Value>(completed percent: Value, thickness: CGFloat = 5)
	where Value: BinaryFloatingPoint {
		self.thickness = thickness
		self.percent = .init(percent)
	}
}

// MARK: - Animatable

extension RingTip: Animatable {
	var animatableData: CGFloat {
		get {
			return self.percent
		} set (newValue) {
			self.percent = newValue
		}
	}
}

// MARK: - Shape

extension RingTip: Shape {
	func path(in rect: CGRect) -> Path {
		let angle: CGFloat = 360 * self.percent * .pi / 180
		let controlRadius: CGFloat = rect.width / 2 - self.thickness
		let center: CGPoint = .init(x: rect.width / 2, y: rect.height / 2)
		
		let x: CGFloat = center.x + controlRadius * cos(angle) - self.thickness / 2
		let y: CGFloat = center.y + controlRadius * sin(angle) - self.thickness / 2
		
		let ellipse: CGRect = .init(x: x, y: y, width: self.thickness, height: self.thickness)
		
		return Path { (path) in
			path.addEllipse(in: ellipse)
		}
		.rotation(Angle(degrees: -90), anchor: .center)
		.shape
	}
}
