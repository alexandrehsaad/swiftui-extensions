// ColorfulLabelStyle+LabelStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

@available(iOS 15, *)
extension ColorfulLabelStyle: LabelStyle {
	internal func makeBody(configuration: Configuration) -> some View {
		return Label {
			configuration.title
		} icon: {
			ZStack(alignment: .center) {
				Image(systemName: self.clipShape)
					.font(.title)
					.foregroundColor(self.tint)
				
				configuration.icon
					.font(.footnote.weight(.semibold))
					.foregroundColor(.white)
			}
			.frame(height: .zero)
		}
	}
}
