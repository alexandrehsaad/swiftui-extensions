// EnvironmentValues+ChartStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension EnvironmentValues {
	/// The chart style environment value.
	internal var chartStyle: AnyChartStyle {
		get { return self[ChartStyleEnvironmentKey.self] }
		set { self[ChartStyleEnvironmentKey.self] = newValue }
	}
}
