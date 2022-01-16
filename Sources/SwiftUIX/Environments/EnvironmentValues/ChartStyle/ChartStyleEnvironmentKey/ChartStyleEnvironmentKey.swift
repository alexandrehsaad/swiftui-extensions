// ChartStyleEnvironmentKey.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// The chart style environment key.
struct ChartStyleEnvironmentKey {
	/// Creates a new instance
	init() {}
}

// MARK: - EnvironmentKey

extension ChartStyleEnvironmentKey: EnvironmentKey {
	static var defaultValue: AnyChartStyle = .init(LineChartStyle(tint: .accentColor))
}
