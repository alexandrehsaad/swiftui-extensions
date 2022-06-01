// ReversedScrollView+View.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension ReversedScrollView: View {
	public var body: some View {
		return GeometryReader { (geometry) in
			ScrollView(self.axis, showsIndicators: self.showsIndicators) {
				self.content
					.frame(
						minWidth: self.minWidth(in: geometry, for: self.axis),
						minHeight: self.minHeight(in: geometry, for: self.axis),
						alignment: .bottom
					)
			}
		}
	}
}
