// View+ChartStyle.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

extension View {
	/// Sets the style for charts within this view.
	public func chartStyle<Style>(_ style: Style) -> some View
	where Style: ChartStyle {
		return self.environment(\.chartStyle, .init(style))
	}
}
