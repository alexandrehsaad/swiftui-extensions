// EnvironmentValues+ChartStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

extension EnvironmentValues {
	/// The chart style environment value.
	var chartStyle: AnyChartStyle {
		get { return self[ChartStyleEnvironmentKey.self] }
		set { self[ChartStyleEnvironmentKey.self] = newValue }
	}
}
