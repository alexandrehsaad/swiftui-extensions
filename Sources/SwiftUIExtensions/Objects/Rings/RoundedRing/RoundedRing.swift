// RoundedRing.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of a rounded ring.
public struct RoundedRing {
	/// The fraction completed.
	private var percent: CGFloat
	
	/// The thickness of this ring.
	private let thickness: CGFloat
	
	/// The gradient of this ring.
	private let gradient: Gradient
	
	/// Creates a new instance with the specified percent, thickness and gradient.
	///
	/// - Parameters:
	///   - percent: The fraction completed.
	///   - thickness: The thickness.
	///   - tint: The tint.
	public init(
		completed percent: CGFloat,
		thickness: CGFloat = 12,
		gradient: Gradient
	) {
		self.percent = percent
		self.thickness = thickness
		self.gradient = gradient
	}
	
	/// Creates a new instance with the specified percent, thickness and tint.
	///
	/// - Parameters:
	///   - percent: The fraction completed.
	///   - thickness: The thickness.
	///   - tint: The tint.
	public init(
		completed percent: CGFloat,
		thickness: CGFloat = 12,
		tint: Color = .accentColor
	) {
		self.percent = percent
		self.thickness = thickness
		self.gradient = .init(colors: [tint])
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
			(self.gradient.stops.last?.color ?? .accentColor) : .clear
	}
}

// MARK: - View

extension RoundedRing: View {
	public var body: some View {
		return GeometryReader { (geometry) in
			ZStack(alignment: .center) {
				Ring(completed: self.percent, thickness: self.thickness)
					.fill(self.ringGradient)
					.shadow(radius: 2)
				
				RingTip(completed: self.percent, thickness: self.thickness)
					.fill(self.ringTipColor)
			}
		}
	}
}
