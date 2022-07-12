// Shape+.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension Shape {
	/// Fills this shape with a color or gradient and traces the outline with a color or gradient.
	///
	/// - parameter fill: The color or gradient to use when filling this shape.
	/// - parameter stroke: The color or gradient with which to stroke this shape.
	/// - parameter lineWidth: The width of the stroke that outlines this shape.
	public func fill<Fill, Stroke>(
		_ fill: Fill,
		stroke: Stroke,
		lineWidth: CGFloat = 1
	) -> some View
	where Fill: ShapeStyle, Stroke: ShapeStyle {
		return self
			.stroke(stroke, lineWidth: lineWidth)
			.background(self.fill(fill))
	}
}
