// AnyChartStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

///
struct AnyChartStyle {
	///
	private let styleMakeBody: (ChartStyle.Configuration) -> AnyView
	
	/// Creates a new instance with the spcified chart style.
	///
	/// - Parameter style: The style.
	init<Style>(_ style: Style)
	where Style: ChartStyle {
		self.styleMakeBody = style.makeTypeErasedBody
	}
}

// MARK: - ChartStyle

extension AnyChartStyle: ChartStyle {
	func makeBody(configuration: ChartStyle.Configuration) -> AnyView {
		return self.styleMakeBody(configuration)
	}
}

extension ChartStyle {
	fileprivate func makeTypeErasedBody(configuration: ChartStyle.Configuration) -> AnyView {
		return .init(self.makeBody(configuration: configuration))
	}
}
