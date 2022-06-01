// ChartStyleConfiguration.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

/// The properties of a chart.
public struct ChartStyleConfiguration {
	/// The label.
	public var label: Text
	
	/// A description of the charted data.
	public var data: [CGFloat]
	
	/// Creates a new instance with the specified label and data.
	///
	/// - parameter label: The label.
	/// - parameter data: The data to chart.
	init(label: Text, data: [CGFloat]) {
		self.label = label
		self.data = data
	}
}
