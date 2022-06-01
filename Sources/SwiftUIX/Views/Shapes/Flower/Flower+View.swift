// Flower+View.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

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
					// The rotation animation on the petals gradient.
					.rotationEffect(
						.degrees(self.isMinimized ? 90 : .zero),
						anchor: .center
					)
					// The shape mask.
					.mask {
						self.shape
					}
					// The blend mode on the petals.
					.blendMode(.normal)
					// The size of the petals.
					.frame(
						width: max(geometry.size.width, geometry.size.height) / 2,
						height: max(geometry.size.width, geometry.size.height) / 2
					)
					// The opacity on the entry and exit of petals.
					.opacity(index == self.petals ? .zero : 1)
					// The position of each petals.
					.rotationEffect(
						.degrees(self.angle * .init(index)),
						anchor: self.isMinimized ? .center : .leading
					)
				}
			}
			// The correction on the center position of the flower.
			.offset(x: self.isMinimized ? .zero : max(geometry.size.width, geometry.size.height) / 4)
			// The size of the flower.
			.frame(
				width: max(geometry.size.width, geometry.size.height),
				height: max(geometry.size.width, geometry.size.height)
			)
			// The rotation animation on the flower.
			.rotationEffect(
				.degrees(self.isMinimized ? -90 : .zero),
				anchor: .center
			)
			// The scale animation.
			.scaleEffect(self.isMinimized ? 0.5 : 1, anchor: .center)
			// The top position of the first petal.
			.rotationEffect(
				.degrees(-90),
				anchor: .center
			)
			// The clockwise animation on the entry of petals.
			.rotation3DEffect(
				.degrees(180),
				axis: (x: 0, y: 1, z: 0)
			)
		}
	}
}
