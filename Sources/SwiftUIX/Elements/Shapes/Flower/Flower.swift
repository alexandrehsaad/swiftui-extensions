// Flower.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

/// A representation of a flower.
public struct Flower<Petal>
where Petal: Shape {
	/// A boolean value indicating whether this flower is minimized.
	internal var isMinimized: Bool
	
	/// The number of petals.
	internal var petals: UInt
	
	/// The shape of petals.
	internal var shape: Petal
	
	/// Creates a new instance with the specified minimized boolean, the number and shape of petals.
	///
	/// - parameter isMinimized: A boolean value.
	/// - parameter petals: The number of petals.
	/// - parameter shape: The shape of petals.
	public init(isMinimized: Bool = false, petals: UInt = 7, shape: Petal) {
		self.isMinimized = isMinimized
		self.petals = petals
		self.shape = shape
	}
	
	/// The color of the petals.
	internal var colors: [Color] = [.accentColor.opacity(0.8), .accentColor.opacity(0.4)]
	
	/// The angle of a petal in degrees.
	internal var angle: CGFloat {
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
