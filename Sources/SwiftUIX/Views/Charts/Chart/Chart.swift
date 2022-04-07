// Chart.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

/// A representation of a chart.
public struct Chart {
	/// The chart style.
	@Environment(\.chartStyle)
	private var chartStyle: AnyChartStyle
	
	/// The chart style configuration.
	private var configuration: ChartStyleConfiguration
	
	/// Creates a chart based on a configuration for a style with a custom appearance.
	///
	/// - Parameter configuration: The chart style configuration
	init(_ configuration: ChartStyleConfiguration) {
		self.configuration = configuration
	}
	
	/// Creates a chart that generates its label from a string.
	///
	/// - Parameters:
	///   - title: The title.
	///   - data: The data to chart.
	public init<S>(_ title: S, data: [CGFloat])
	where S: StringProtocol {
		let label: Text = .init(title)
		let configuration: ChartStyleConfiguration = .init(label: label, data: data)
		self.init(configuration)
	}
	
	/// Creates a chart that generates its label from a localized string key.
	///
	/// - Parameters:
	///   - titleKey: The localized key.
	///   - data: The data to chart.
	init(_ titleKey: LocalizedStringKey, data: [CGFloat]) {
		let label: Text = .init(titleKey)
		let configuration: ChartStyleConfiguration = .init(label: label, data: data)
		self.init(configuration)
	}
}

// MARK: - View

extension Chart: View {
	public var body: some View {
		return self.chartStyle.makeBody(configuration: self.configuration)
	}
}
