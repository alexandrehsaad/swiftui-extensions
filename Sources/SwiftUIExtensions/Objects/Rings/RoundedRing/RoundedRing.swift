// RoundedRing.swift
// SwiftUI Extensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

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
	
	/// The tint of this ring.
	private var tint: Color {
		return self.gradient.stops.first?.color ?? .accentColor
	}
	
	/// The color of the background ring.
	private var backgroundRingColor: Color {
		(self.gradient.stops.first?.color ?? .accentColor)
			.opacity(0.3)
	}
	
	/// The gradient of the foreground ring.
	private var foregroundRingGradient: AngularGradient {
		let startAngle: Angle = Angle(degrees: 0)
		let endAngle: Angle = Angle(degrees: 360 * .init(self.percent))
		
		return .init(
			gradient: self.gradient,
			center: .center,
			startAngle: startAngle,
			endAngle: endAngle
		)
	}
	
	/// The color of the rounded ring tip.
	private var roundedRingTipColor: Color {
		return self.percent == 0 || self.percent >= 1 ?
			(self.gradient.stops.last?.color ?? .accentColor) : .clear
	}
}

// MARK: - View

extension RoundedRing: View {
	public var body: some View {
		return GeometryReader { (geometry) in
			ZStack(alignment: .center) {
				// The background ring
				Ring(completed: 1, thickness: self.thickness)
					.fill(self.backgroundRingColor)
				
				// The foreground ring
				Ring(completed: self.percent, thickness: self.thickness)
					.fill(self.foregroundRingGradient)
					.shadow(radius: 2)
				
				// The rounded ring tip.
				RingTip(completed: self.percent, thickness: self.thickness)
					.fill(self.roundedRingTipColor)
			}
		}
	}
}
