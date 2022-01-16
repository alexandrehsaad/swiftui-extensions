// AudioChartStyle.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A chart style that displays its data with bars for audio contexts.
public struct AudioChartStyle {
	/// Creates an audio chart style
	public init() {}
}

// MARK: - ChartStyle

extension AudioChartStyle: ChartStyle {
	public func makeBody(configuration: Self.Configuration) -> some View {
		let min: CGFloat = .maximum(.zero, configuration.data.min() ?? .zero)
		let max: CGFloat = configuration.data.max() ?? .zero
		
		return GeometryReader { (geometry) in
			HStack(alignment: .center, spacing: 3) {
				ForEach(configuration.data, id: \.self) { (data) in
					Color.primary
						.frame(
							width: 1,
							height: .maximum(1, geometry.size.height / (max - min) * data),
							alignment: .center
						)
				}
			}
			// TODO: pinch gesture to zoom and dezoom
		}
	}
}
