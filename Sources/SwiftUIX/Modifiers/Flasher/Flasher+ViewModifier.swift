// Flasher+ViewModifier.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

extension Flasher: ViewModifier {
	internal func body(content: Content) -> some View {
		return TimelineView(.periodic(from: .now, by: 0.5)) { (timeline) in
			let value: Double = self.seconds(for: timeline.date)
			
			content
				.opacity(self.opacity)
				.onChange(of: value) { _ in
					guard self.isFlashing else {
						self.opacity = 1
						return
					}
					
					withAnimation(.easeInOut(duration: 0.5)) {
						if self.opacity != 0 {
							self.opacity = 0
						} else {
							self.opacity = 1
						}
					}
				}
		}
	}
}
