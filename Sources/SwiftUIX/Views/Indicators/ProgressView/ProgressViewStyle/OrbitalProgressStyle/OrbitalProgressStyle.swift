// OrbitalProgressStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

// TODO: test on other platforms
/// A progress view that visually indicates its progress using an orbit.
@available(iOS 15, *)
public struct OrbitalProgressStyle {
	/// The tint of this progress view.
	private let tint: Color

	/// Creates a new instance with the specified tint.
	public init(tint: Color = .accentColor) {
		self.tint = tint
	}
}

// MARK: - ProgressViewStyle

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
