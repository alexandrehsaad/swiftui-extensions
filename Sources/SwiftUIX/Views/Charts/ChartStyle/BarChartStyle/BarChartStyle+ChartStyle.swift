// BarChartStyle+ChartStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

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
