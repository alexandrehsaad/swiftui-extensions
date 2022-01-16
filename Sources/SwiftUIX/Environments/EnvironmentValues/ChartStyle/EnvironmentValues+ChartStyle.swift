// EnvironmentValues+.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

extension EnvironmentValues {
	/// The chart style environment value.
	var chartStyle: AnyChartStyle {
		get { return self[ChartStyleEnvironmentKey.self] }
		set { self[ChartStyleEnvironmentKey.self] = newValue }
	}
}
