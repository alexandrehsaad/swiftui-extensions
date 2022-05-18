// AnyChartStyle+ChartStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension AnyChartStyle: ChartStyle {
	internal func makeBody(configuration: ChartStyle.Configuration) -> AnyView {
		return self.styleMakeBody(configuration)
	}
}
