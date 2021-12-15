// ChartStyle.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A type that applies a custom appearance to all charts within a view.
public protocol ChartStyle {
	/// The properties of a label.
	typealias Configuration = ChartStyleConfiguration
	
	/// A view that represents the body of a chart.
	associatedtype Body: View
	
	/// Creates a view that represents the body of a chart.
	func makeBody(configuration: Self.Configuration) -> Self.Body
}
