// AnyChartStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

///
internal struct AnyChartStyle {
	///
	internal let styleMakeBody: (ChartStyle.Configuration) -> AnyView
	
	/// Creates a new instance with the specified chart style.
	///
	/// - parameter style: The style.
	internal init<Style>(_ style: Style)
	where Style: ChartStyle {
		self.styleMakeBody = style.makeTypeErasedBody
	}
}
