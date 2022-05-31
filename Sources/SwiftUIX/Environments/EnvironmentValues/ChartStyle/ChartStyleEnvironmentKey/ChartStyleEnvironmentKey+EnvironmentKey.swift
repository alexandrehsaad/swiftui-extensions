// ChartStyleEnvironmentKey+EnvironmentKey.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

extension ChartStyleEnvironmentKey: EnvironmentKey {
	internal static var defaultValue: AnyChartStyle = .init(LineChartStyle(tint: .accentColor))
}
