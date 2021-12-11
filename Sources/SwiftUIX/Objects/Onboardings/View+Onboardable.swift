// View+Onboardable.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

extension View {
	/// Marks this view as onboardable, which configures the display of an onboarding sheet.
	///
	/// 1. import SwiftUIX.
	///
	/// ```swift
	/// import SwiftUIX
	/// ```
	///
	/// 2. Implement MyApp:
	///
	/// ```swift
	/// @main struct MyApp: App {
	///		var body: some Scene {
	///			WindowGroup {
	///				ContentView()
	///			}
	///		}
	///	}
	/// ```
	///
	/// 3. Implement ContentView with onboardable properties:
	///
	/// ```swift
	///	struct ContentView {
	///		@State var isOnboardable = true
	///
	///		let items = [
	///			OnboardingItem(symbol: "circle", title: "My title", subtitle: "My subtitle.")
	///		]
	///
	///		let terms = "My terms"
	/// }
	/// ```
	///
	/// 4. Extend ContentView with onboardable modifier:
	///
	/// ```swift
	///	extension ContentView: View {
	///		var body: some View {
	///			NavigationView {
	///				Text("Hello, World!")
	///			}
	///			.onboardable($isOnboardable, items: items, terms: terms)
	///		}
	/// }
	/// ```
	///
	/// - Parameters:
	///   - isOnboardable: A binding to a boolean value that determines whether to present this sheet.
	///   - onboardingType: The onboarding type.
	///   - items: The onboarding items.
	///   - terms: The terms in the footer.
	@available(iOS 15, watchOS 8, *)
	public func onboardable(
		_ isOnboardable: Binding<Bool>,
		title: OnboardingType = .welcome,
		items: [OnboardingItem],
		terms: String? = nil
	) -> some View {
		return self.sheet(isPresented: isOnboardable) {
			OnboardingView(isOnboardable, title: title, items: items, terms: terms)
	   }
	}
}
