// Flower.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of a flower.
public struct Flower {
	/// A boolean value indicating whether this flower is minimized.
	private var isMinimized: Bool
	
	/// The number of petals.
	private var petals: UInt
	
	/// The shape of petals.
	private var shape: PetalType
	
	/// Creates a new instance with the specified minimized boolean, the number and shape of petals.
	///
	/// - Parameters:
	///   - isMinimized: A boolean value.
	///   - petals: The number of petals.
	///   - shape: The shape of petals.
	public init(isMinimized: Bool = false, petals: UInt = 7, shape: PetalType = .circle) {
		self.isMinimized = isMinimized
		self.petals = petals
		self.shape = shape
	}
	
	/// The color of the petals.
	private var colors: [Color] = [.accentColor.opacity(0.8), .accentColor.opacity(0.4)]
	
	/// The angle of a petal in degrees.
	private var angle: CGFloat {
		guard self.petals != 0 else {
			return .zero
		}
		
		return 360 / .init(self.petals)
	}
	
	/// Returns this view masked.
	public func masked() -> some View {
		var flowerView: Self = .init(isMinimized: self.isMinimized, petals: self.petals, shape: self.shape)
		flowerView.colors = [.black]
		
		return flowerView
	}
}

// MARK: - View

extension Flower: View {
	public var body: some View {
		return GeometryReader { (geometry) in
			ZStack(alignment: .center) {
				// The petals.
				ForEach(0...self.petals, id: \.self) { (index) in
					// The gradient of the petals.
					LinearGradient(
						gradient: .init(colors: self.colors),
						startPoint: .leading,
						endPoint: .trailing
					)
					// The correction on the horizonal angle of the gradient.
					.rotationEffect(
						.degrees(-self.angle * CGFloat(index) - CGFloat(90)),
						anchor: .center
					)
					// The shape mask.
					.mask {
						switch self.shape {
						case .circle:
							Circle()
						case .polygon(let sides):
							Polygon(sides: sides)
						}
					}
					// The blend mode on the petals.
					.blendMode(.normal)
					// The size of the petals.
					.frame(
						width: max(geometry.size.width, geometry.size.height) / 2,
						height: max(geometry.size.width, geometry.size.height) / 2
					)
					// The opacity on the entry and exit of petals.
					.opacity(index == self.petals ? 0 : 1)
					// The position of each petals.
					.rotationEffect(
						.degrees(self.angle * .init(index)),
						anchor: self.isMinimized ? .center : .leading
					)
				}
			}
			// The correction on the center position of the flower.
			.offset(x: self.isMinimized ? 0 : max(geometry.size.width, geometry.size.height) / 4)
			// The size of the flower.
			.frame(
				width: max(geometry.size.width, geometry.size.height),
				height: max(geometry.size.width, geometry.size.height)
			)
			// The rotation animation.
			.rotationEffect(.degrees(self.isMinimized ? -90 : 0))
			// The scale animation.
			.scaleEffect(self.isMinimized ? 0.2 : 1)
			// The top position of the first petal.
			.rotationEffect(.degrees(-90))
			// The clockwise animation on the entry of petals.
			.rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
		}
	}
}
