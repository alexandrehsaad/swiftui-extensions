// LineChartStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

/// A chart style that displays its data with a line.
public struct LineChartStyle {
	/// The tint of the line.
	internal let tint: Color
	
	/// Creates a line chart style with a tint color.
	///
	/// - parameter tint: The tint color.
	public init(tint: Color) {
		self.tint = tint
	}
}
