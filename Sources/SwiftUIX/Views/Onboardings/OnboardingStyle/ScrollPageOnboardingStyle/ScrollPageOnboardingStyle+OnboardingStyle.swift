// ScrollPageOnboardingStyle+OnboardingStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

#if os(watchOS)

import SwiftUI

extension ScrollPageOnboardingStyle: OnboardingStyle {
	public func makeBody(configuration: Self.Configuration) -> some View {
		return ScrollView(.vertical, showsIndicators: true) {
			LazyVStack(alignment: .leading, spacing: 32) {
				configuration.title
					.font(.headline)
					.fontWeight(.bold)
					.foregroundColor(.primary)
					.multilineTextAlignment(.leading)
					.accessibilityHeading(.h1)
				
				ForEach(configuration.labels) { (item) in
					VStack(alignment: .leading, spacing: .zero) {
						item.image
							.renderingMode(.template)
							.font(.largeTitle)
							.foregroundColor(.accentColor)
							.symbolRenderingMode(.hierarchical)
							.frame(width: 40, height: 40, alignment: .center)
							.padding(.bottom)
							.accessibility(hidden: true)
						
						VStack(alignment: .leading, spacing: 2) {
							item.title
								.font(.footnote)
								.fontWeight(.semibold)
								.foregroundColor(.primary)
								.multilineTextAlignment(.leading)
								.frame(maxWidth: .infinity, alignment: .leading)
							
							item.subtitle
								.font(.footnote)
								.foregroundColor(.secondary)
								.allowsTightening(true)
								.multilineTextAlignment(.leading)
								.frame(maxWidth: .infinity, alignment: .leading)
						}
					}
					.padding(.vertical)
				}
				
				VStack(alignment: .center, spacing: nil) {
					Section {
						configuration.button
							.buttonStyle(BorderedButtonStyle(tint: .accentColor))
					} footer: {
						if let terms: Text = configuration.terms {
							terms
								.font(.system(size: 10))
								.allowsTightening(true)
								.foregroundColor(.secondary)
								.multilineTextAlignment(.leading)
								.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
						}
					}
				}
			}
		}
	}
}

#endif
