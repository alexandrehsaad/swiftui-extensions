// ChartStyleConfiguration.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// The properties of a label.
public struct ChartStyleConfiguration {
	/// The label.
	public var label: Text
	
	/// A description of the charted data.
	public var data: [CGFloat]
	
	/// Creates a new instance with the specified label and data.
	///
	/// - Parameters:
	///   - label: The label.
	///   - data: The data to chart.
	init(label: Text, data: [CGFloat]) {
		self.label = label
		self.data = data
	}
}
