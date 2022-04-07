// OnboardingView.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

// TODO: macOS
/// A representation of an onboarding view.
@available(iOS 15, watchOS 8, *)
struct OnboardingView {
	/// A boolean value indicating whether this sheet is presented.
	@Binding
	private var isOnboardable: Bool
	
	/// The onboarding title.
	private let title: OnboardingTitle
	
	/// The onboarding labels.
	private let labels: [OnboardingLabel]
	
	/// The terms in the footer.
	private let terms: String?
	
	/// Creates a new instance with the specified onboarding type, labels and terms.
	///
	/// - Parameters:
	///   - isPresented: A binding to a boolean value that determines whether to present this sheet.
	///   - title: The onboarding title.
	///   - labels: The onboarding labels.
	///   - terms: The terms in the footer.
	init(
		_ isOnboardable: Binding<Bool>,
		title: OnboardingTitle = .welcome,
		labels: [OnboardingLabel],
		terms: String? = nil
	) {
		self._isOnboardable = isOnboardable
		self.title = title
		self.labels = labels
		self.terms = terms
	}
	
	/// Creates a new instance with the specified onboarding type, labels and terms.
	///
	/// - Parameters:
	///   - isPresented: A binding to a boolean value that determines whether to present this sheet.
	///   - title: The onboarding title.
	///   - terms: The terms in the footer.
	///   - labels: The onboarding labels.
	init(
		_ isOnboardable: Binding<Bool>,
		title: OnboardingTitle = .welcome,
		terms: String? = nil,
		@OnboardingLabelBuilder labels builder: @escaping () -> Array<OnboardingLabel>
	) {
		self.init(isOnboardable, title: title, labels: builder(), terms: terms)
	}
	
	/// Toggles the presentation.
	private func togglePresentation() {
		self.isOnboardable.toggle()
	}
	
	// TODO: make a modifier
	@State
	private var symbolMaxSize: CGFloat?
}

// MARK: - View

extension OnboardingView: View {
	var body: some View {
		return NavigationView {
			Group {
				#if os(iOS)
				
				VStack(alignment: .center, spacing: 8) {
					ScrollView(.vertical, showsIndicators: false) {
						VStack(alignment: .center, spacing: 24) {
							self.header
							
							ForEach(self.labels) { (item) in
								HStack(alignment: .top, spacing: .zero) {
									Image(systemName: item.symbol)
										.font(.largeTitle)
										.foregroundColor(.accentColor)
										.padding(.horizontal)
										.background(
											GeometryReader { (geometry) in
												Color.clear
													.preference(
														key: OnboardingLabelWidth.self,
														value: geometry.size.width
													)
											}
										)
										.frame(width: self.symbolMaxSize)
										.onPreferenceChange(OnboardingLabelWidth.self) {
											self.symbolMaxSize = $0
										}
									
									VStack(alignment: .leading, spacing: 2) {
										Text(item.title)
											.font(.footnote)
											.fontWeight(.semibold)
											.lineLimit(1)
											.foregroundColor(.primary)
											.frame(maxWidth: .infinity, alignment: .leading)
										
										Text(item.subtitle)
											.font(.footnote)
											.allowsTightening(true)
											.multilineTextAlignment(.leading)
											.foregroundColor(.secondary)
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
				
				#elseif os(macOS)

				EmptyView()
				
				#elseif os(watchOS)
				
				ScrollView(.vertical, showsIndicators: true) {
					LazyVStack(alignment: .leading, spacing: 32) {
						self.header
						
						ForEach(self.labels) { (item) in
							VStack(alignment: .leading, spacing: .zero) {
								Image(systemName: item.symbol)
									.font(.largeTitle)
									.foregroundColor(.accentColor)
									.symbolRenderingMode(.hierarchical)
									.padding(.bottom)
									.background(
										GeometryReader { (geometry) in
											Color.clear
												.preference(
													key: OnboardingLabelWidth.self,
													value: geometry.size.height
												)
										}
									)
									.frame(width: self.symbolMaxSize, alignment: .leading)
									.onPreferenceChange(OnboardingLabelWidth.self) {
										self.symbolMaxSize = $0
									}

								VStack(alignment: .leading, spacing: 2) {
									Text(item.title)
										.font(.footnote)
										.fontWeight(.semibold)
										.multilineTextAlignment(.leading)
										.foregroundColor(.primary)
										.frame(maxWidth: .infinity, alignment: .leading)
									
									Text(item.subtitle)
										.font(.footnote)
										.allowsTightening(true)
										.multilineTextAlignment(.leading)
										.foregroundColor(.secondary)
										.frame(maxWidth: .infinity, alignment: .leading)
								}
							}
							.padding(.vertical)
						}
						
						self.footer
					}
				}
				#endif
			}
			#if !os(macOS)
			.navigationBarTitleDisplayMode(.inline)
			#endif
			.navigationTitle("")
		}
		.onAppear {
			OnboardEnvironmentKey.defaultValue = true
		}
		.onDisappear {
			OnboardEnvironmentKey.defaultValue = false
		}
	}
}

extension OnboardingView {
	/// The header of this view.
	private var header: some View {
		return Text(self.title.description)
			#if os(iOS)
		
			.font(.largeTitle)
			.fontWeight(.bold)
			.multilineTextAlignment(.center)
			.foregroundColor(.primary)
			.padding(.vertical)
			.padding(.vertical)
		
			#elseif os(macOS)
		
			//
		
			#elseif os(watchOS)
		
			.font(.headline)
			.fontWeight(.bold)
			.multilineTextAlignment(.leading)
			.foregroundColor(.primary)
		
			#endif
	}
	
	/// The footer of this view.
	private var footer: some View {
		#if os(iOS)
		
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
		
		#elseif os(macOS)
		
		return EmptyView()
		
		#elseif os(watchOS)
		
		return VStack(alignment: .center, spacing: nil) {
			Section {
				Button {
					self.togglePresentation()
				} label: {
					Text("Continue")
				}
				.buttonStyle(BorderedButtonStyle(tint: .accentColor))
			} footer: {
				if let terms: String = self.terms {
					Text(terms)
						.font(.system(size: 10))
						.allowsTightening(true)
						.multilineTextAlignment(.leading)
						.foregroundColor(.secondary)
						.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
				}
			}
		}
		
		#endif
	}
}
