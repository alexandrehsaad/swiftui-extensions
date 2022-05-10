// ChartStyleEnvironmentKey.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

/// The chart style environment key.
internal struct ChartStyleEnvironmentKey {
	/// Creates a new instance.
	internal init() {}
}

// MARK: - EnvironmentKey

extension ChartStyleEnvironmentKey: EnvironmentKey {
	internal static var defaultValue: AnyChartStyle = .init(LineChartStyle(tint: .accentColor))
}
