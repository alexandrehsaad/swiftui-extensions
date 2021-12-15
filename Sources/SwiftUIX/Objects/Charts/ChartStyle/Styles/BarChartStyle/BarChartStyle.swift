// BarChartStyle.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A chart style that displays its data with bars.
public struct BarChartStyle {
	/// The tint of the bars.
	private let tint: Color
	
	/// Creates a bar chart style with a tint color.
	///
	/// - Parameter tint: The tint color.
	public init(tint: Color) {
		self.tint = tint
	}
}

// MARK: - ChartStyle

extension BarChartStyle: ChartStyle {
	public func makeBody(configuration: Self.Configuration) -> some View {
		let min: CGFloat = .maximum(.zero, configuration.data.min() ?? .zero)
		let max: CGFloat = configuration.data.max() ?? .zero
		
		return GeometryReader { (geometry) in
			HStack(alignment: .bottom, spacing: .zero) {
				ForEach(configuration.data, id: \.self) { (data) in
					self.tint
						.frame(
							height: geometry.size.height / max - min * abs(data),
							alignment: .center
						)
						.cornerRadius(2)
						.offset(y: data < 0 ? geometry.size.height / max - min * abs(data) : .zero)
				}
			}
		}
	}
}
