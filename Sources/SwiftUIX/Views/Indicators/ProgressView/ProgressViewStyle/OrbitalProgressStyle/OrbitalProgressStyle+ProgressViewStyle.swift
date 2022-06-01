// OrbitalProgressStyle+ProgressViewStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

@available(iOS 15, *)
extension OrbitalProgressStyle: ProgressViewStyle {
	public func makeBody(configuration: Configuration) -> some View {
		return Label {
			VStack(alignment: .leading) {
				Group {
					configuration.label?
						.font(.body)
						.foregroundColor(.primary)
					
					configuration.currentValueLabel
						.font(.caption)
						.foregroundColor(.secondary)
				}
				.lineLimit(1)
			}
			.offset(y: -7)
		} icon: {
			ZStack(alignment: .center) {
				Circle()
					.stroke(lineWidth: 4)
					.fill(.quaternary)
				
				Circle()
					.trim(from: 0, to: min(configuration.fractionCompleted ?? .zero, 1))
					.stroke(style: StrokeStyle(lineWidth: 4, lineCap: .round, lineJoin: .round))
					.fill(self.tint)
					.rotationEffect(Angle(degrees: 270))
			}
			.offset(x: -2, y: 1)
			.padding(4)
			.frame(width: 44, height: 44, alignment: .center)
		}
		.frame(maxWidth: .infinity, maxHeight: 41, alignment: .leading)
	}
}
