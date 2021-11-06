// Ring.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of a ring.
public struct Ring {
	/// The fraction completed.
	private var percent: CGFloat
	
	/// The thickness of this ring.
	private let thickness: CGFloat
	
	/// Creates a new instance with the specified percent and thickness.
	///
	/// - Parameters:
	///   - percent: The fraction completed.
	///   - thickness: The thickness.
	public init<Value>(completed percent: Value, thickness: CGFloat = 5)
	where Value: BinaryFloatingPoint {
		self.thickness = thickness
		self.percent = .init(percent)
	}
}

// MARK: - Animatable

extension Ring: Animatable {
	public var animatableData: CGFloat {
		get {
			return self.percent
		} set (newValue) {
			self.percent = newValue
		}
	}
}

// MARK: - Shape

extension Ring: Shape {
	public func path(in rect: CGRect) -> Path {
		let width: CGFloat = rect.width
		let height: CGFloat = rect.height
		
		let center: CGPoint = .init(x: width / 2, y: height / 2)
		let radius: CGFloat = width / 2 - self.thickness
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
		.rotation(Angle(degrees: -90), anchor: .center)
		.shape
	}
}
