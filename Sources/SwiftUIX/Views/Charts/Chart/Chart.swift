// Chart.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

/// A representation of a chart.
public struct Chart {
	/// The chart style.
	@Environment(\.chartStyle)
	internal var chartStyle: AnyChartStyle
	
	/// The chart style configuration.
	internal var configuration: ChartStyleConfiguration
	
	/// Creates a chart based on a configuration for a style with a custom appearance.
	///
	/// - parameter configuration: The chart style configuration
	internal init(_ configuration: ChartStyleConfiguration) {
		self.configuration = configuration
	}
	
	/// Creates a chart that generates its label from a string.
	///
	/// - parameter title: The title.
	/// - parameter data: The data to chart.
	public init<S>(_ title: S, data: [CGFloat])
	where S: StringProtocol {
		let label: Text = .init(title)
		let configuration: ChartStyleConfiguration = .init(label: label, data: data)
		self.init(configuration)
	}
	
	/// Creates a chart that generates its label from a localized string key.
	///
	/// - parameter titleKey: The localized key.
	/// - parameter data: The data to chart.
	internal init(_ titleKey: LocalizedStringKey, data: [CGFloat]) {
		let label: Text = .init(titleKey)
		let configuration: ChartStyleConfiguration = .init(label: label, data: data)
		self.init(configuration)
	}
}
