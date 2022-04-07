// ChartStyleEnvironmentKey.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
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
