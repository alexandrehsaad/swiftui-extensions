// BarChartStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

/// A chart style that displays its data with bars.
public struct BarChartStyle {
	/// The tint of the bars.
	internal let tint: Color
	
	/// Creates a bar chart style with a tint color.
	///
	/// - parameter tint: The tint color.
	public init(tint: Color) {
		self.tint = tint
	}
}
