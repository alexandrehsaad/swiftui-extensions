// LineChartStyle.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A chart style that displays its data with a line.
public struct LineChartStyle {
	/// The tint of the line.
	private let tint: Color
	
	/// Creates a line chart style with a tint color.
	///
	/// - Parameter tint: The tint color.
	public init(tint: Color) {
		self.tint = tint
	}
}

// MARK: - ChartStyle

extension LineChartStyle: ChartStyle {
	public func makeBody(configuration: Self.Configuration) -> some View {
		// TODO: line chart
		return Color.clear
	}
}
