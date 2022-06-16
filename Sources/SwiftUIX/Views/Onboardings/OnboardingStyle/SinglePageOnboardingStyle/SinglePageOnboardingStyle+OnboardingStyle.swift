// SinglePageOnboardingStyle+OnboardingStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

#if os(iOS)

extension SinglePageOnboardingStyle: OnboardingStyle {
	public func makeBody(configuration: Self.Configuration) -> some View {
		return VStack(alignment: .center, spacing: 24) {
			configuration.title
				.font(.largeTitle)
				.fontWeight(.bold)
				.foregroundColor(.primary)
				.multilineTextAlignment(.center)
				.fixedSize(horizontal: false, vertical: true)
				.padding(.vertical)
				.padding(.vertical)
				.padding(.top)
				.accessibilityHeading(.h1)
			
			ForEach(configuration.labels) { (label) in
				HStack(alignment: .top, spacing: .zero) {
					label.image
						.renderingMode(.template)
						.font(Font.largeTitle.weight(.regular))
						.foregroundColor(.accentColor)
						.frame(width: 40, height: 40, alignment: .center)
						.padding(.horizontal)
						.accessibility(hidden: true)
					
					VStack(alignment: .leading, spacing: 2) {
						label.title
							.font(.subheadline)
							.fontWeight(.semibold)
							.foregroundColor(.primary)
							.lineLimit(2)
							.frame(maxWidth: .infinity, alignment: .leading)
						
						label.subtitle
							.font(.subheadline)
							.foregroundColor(.secondary)
							.allowsTightening(true)
							.multilineTextAlignment(.leading)
							.frame(maxWidth: .infinity, alignment: .leading)
					}
					.padding(.trailing)
				}
				.accessibilityElement(children: .combine)
			}
			
			Spacer()
			
			VStack(alignment: .center, spacing: 24) {
				if let terms: Text = configuration.terms {
					terms
						.font(.caption2)
						.allowsTightening(true)
						.foregroundColor(.secondary)
						.multilineTextAlignment(.center)
						.fixedSize(horizontal: false, vertical: true)
						.padding(.horizontal)
				}
				
				configuration.button
					.buttonStyle(FullWidthButtonStyle())
					.padding(.bottom)
					.padding(.bottom)
			}
		}
		.padding(.horizontal)
	}
}

#endif
