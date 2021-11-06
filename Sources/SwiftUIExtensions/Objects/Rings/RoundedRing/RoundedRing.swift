// RoundedRing.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of a rounded ring.
public struct RoundedRing {
	/// The completed value.
	private var value: CGFloat
	
	/// The total value.
	private var total: CGFloat
	
	/// The thickness of this ring.
	private let thickness: CGFloat
	
	/// The gradient of this ring.
	private let gradient: Gradient
	
	/// Creates a new instance with the specified percent, thickness and gradient.
	///
	/// - Parameters:
	///   - value: The completed value.
	///   - thickness: The thickness.
	///   - tint: The tint.
	public init<Value>(value: Value, total: Value = 1, thickness: CGFloat = 12, gradient: Gradient)
	where Value: BinaryFloatingPoint {
		self.value = .init(value)
		self.total = .init(total)
		self.thickness = thickness
		self.gradient = gradient
	}
	
	/// Creates a new instance with the specified percent, thickness and tint.
	///
	/// - Parameters:
	///   - value: The completed value.
	///   - thickness: The thickness.
	///   - tint: The tint.
	public init<Value>(value: Value, total: Value = 1, thickness: CGFloat = 12, tint: Color = .primary)
	where Value: BinaryFloatingPoint {
		self.value = .init(value)
		self.total = .init(total)
		self.thickness = thickness
		self.gradient = .init(colors: [tint])
	}
	
	/// The value in percent.
	private var percent: CGFloat {
		return self.value / self.total
	}
	
	/// The gradient of the ring.
	private var ringGradient: AngularGradient {
		let startAngle: Angle = Angle(degrees: 0)
		let endAngle: Angle = Angle(degrees: 360 * .init(self.percent))
		
		return .init(
			gradient: self.gradient,
			center: .center,
			startAngle: startAngle,
			endAngle: endAngle
		)
	}
	
	/// The color of the ring tip.
	private var ringTipColor: Color {
		return self.percent == 0 || self.percent >= 1 ?
			(self.gradient.stops.last?.color ?? .primary) : .clear
	}
}

// MARK: - View

extension RoundedRing: View {
	public var body: some View {
		return GeometryReader { (geometry) in
			ZStack(alignment: .center) {
				Ring(value: self.value, total: self.total, thickness: self.thickness)
					.fill(self.ringGradient)
					.shadow(radius: 2)
				
				RingTip(value: self.value, total: self.total, thickness: self.thickness)
					.fill(self.ringTipColor)
			}
			.rotationEffect(Angle(degrees: -90), anchor: .center)
			.frame(
				width: geometry.size.width > geometry.size.height ? geometry.size.width : geometry.size.height,
				height: geometry.size.width > geometry.size.height ? geometry.size.width : geometry.size.height,
				alignment: .center
			)
		}
	}
}
