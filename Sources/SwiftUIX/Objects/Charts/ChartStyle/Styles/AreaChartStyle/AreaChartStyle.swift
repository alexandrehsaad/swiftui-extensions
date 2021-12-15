// AreaChartStyle.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A chart style that displays its data with an area.
@available(*, unavailable)
public struct AreaChartStyle {
	/// Creates an area chart style
	public init() {}
}

// MARK: - ChartStyle

@available(*, unavailable)
extension AreaChartStyle: ChartStyle {
	public func makeBody(configuration: Self.Configuration) -> some View {
		// TODO: chart style
		return Color.clear
	}
}
