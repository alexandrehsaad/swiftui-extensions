// OnboardingView.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of an onboarding view.
struct OnboardingView {
	/// A boolean value indicating whether this sheet is presented.
	@Binding
	private var isOnboardable: Bool
	
	/// The onboarding type.
	private let title: OnboardingType
	
	/// The onboarding items.
	private let items: [OnboardingItem]
	
	/// The terms in the footer.
	private let terms: String?
	
	/// Creates a new instance with the specified onboarding type, items and terms.
	///
	/// - Parameters:
	///   - isPresented: A binding to a boolean value that determines whether to present this sheet.
	///   - title: The onboarding type.
	///   - items: The onboarding items.
	///   - terms: The terms in the footer.
	init(
		_ isOnboardable: Binding<Bool>,
		title: OnboardingType = .welcome,
		items: [OnboardingItem],
		terms: String? = nil
	) {
		self._isOnboardable = isOnboardable
		self.title = title
		self.items = items
		self.terms = terms
	}
	
	/// Toggles the presentation.
	private func togglePresentation() {
		self.isOnboardable.toggle()
	}
	
	///
	@State
	private var buttonMaxWidth: CGFloat?
}

// MARK: - View

extension OnboardingView: View {
	var body: some View {
		return VStack(alignment: .center, spacing: 8) {
			ScrollView(.vertical, showsIndicators: false) {
				VStack(alignment: .center, spacing: 24) {
					Text(self.title.description)
						.font(.largeTitle)
						.fontWeight(.bold)
						.multilineTextAlignment(.center)
						.padding(.vertical)
						.padding(.vertical)
					
					// Onboarding Check List
					VStack(alignment: .leading, spacing: 24) {
						ForEach(self.items) { (item) in
							HStack(alignment: .top, spacing: .zero) {
								Image(systemName: item.symbol)
									.font(.largeTitle)
									.foregroundColor(.accentColor)
									.padding(.horizontal)
									.background(
										GeometryReader { (geometry) in
											Color.clear
												.preference(
													key: MaxPreferenceKey.self,
													value: geometry.size.width
												)
										}
									)
									.frame(width: self.buttonMaxWidth)
									.onPreferenceChange(MaxPreferenceKey.self) {
										self.buttonMaxWidth = $0
									}
								
								VStack(alignment: .leading, spacing: 2) {
									Text(item.title)
										.font(.footnote)
										.fontWeight(.semibold)
										.lineLimit(1)
										.foregroundColor(.primary)
									
									Text(item.subtitle)
										.font(.footnote)
										.allowsTightening(true)
										.multilineTextAlignment(.leading)
										.foregroundColor(.secondary)
								}
								.frame(maxWidth: .infinity, alignment: .leading)
							}
						}
					}
				}
			}
			.padding(.vertical)
			
			self.footer
		}
		.padding()
	}
}

extension OnboardingView {
	/// The footer of this view.
	private var footer: some View {
		return VStack(alignment: .center, spacing: 24) {
			if let terms: String = self.terms {
				Text(terms)
					.font(.caption2)
					.allowsTightening(true)
					.multilineTextAlignment(.center)
					.foregroundColor(.secondary)
					.padding(.horizontal)
			}
			
			Button {
				self.togglePresentation()
			} label: {
				Text("Continue")
			}
			.buttonStyle(FullWidthButtonStyle())
		}
	}
}
