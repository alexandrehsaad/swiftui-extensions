// View+Onboardable.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
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
	///		let labels = [
	///			OnboardingLabel(symbol: "circle", title: "My title", subtitle: "My subtitle."),
	///			OnboardingLabel(symbol: "circle", title: "My title", subtitle: "My subtitle."),
	///			OnboardingLabel(symbol: "circle", title: "My title", subtitle: "My subtitle.")
	///		]
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
	///			.onboardable($isOnboardable, labels: labels)
	///		}
	/// }
	/// ```
	///
	/// - Parameters:
	///   - isOnboardable: A binding to a boolean value that determines whether to present this sheet.
	///   - OnboardingTitle: The onboarding title.
	///   - labels: The onboarding labels.
	///   - terms: The terms in the footer.
	@available(iOS 15, watchOS 8, *)
	public func onboardable(
		_ isOnboardable: Binding<Bool>,
		title: OnboardingTitle = .welcome,
		labels: [OnboardingLabel],
		terms: String? = nil
	) -> some View {
		return self.sheet(isPresented: isOnboardable) {
			OnboardingView(isOnboardable, title: title, labels: labels, terms: terms)
	   }
	}
	
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
	///			.onboardable($isOnboardable) {
	///				OnboardingLabel(symbol: "circle", title: "My title", subtitle: "My subtitle.")
	///				OnboardingLabel(symbol: "circle", title: "My title", subtitle: "My subtitle.")
	///				OnboardingLabel(symbol: "circle", title: "My title", subtitle: "My subtitle.")
	///			}
	///		}
	/// }
	/// ```
	///
	/// - Parameters:
	///   - isOnboardable: A binding to a boolean value that determines whether to present this sheet.
	///   - OnboardingTitle: The onboarding title.
	///   - terms: The terms in the footer.
	///   - labels: The onboarding labels.
	@available(iOS 15, watchOS 8, *)
	public func onboardable(
		_ isOnboardable: Binding<Bool>,
		title: OnboardingTitle = .welcome,
		terms: String? = nil,
		@OnboardingLabelBuilder labels builder: @escaping () -> Array<OnboardingLabel>
	) -> some View {
		return self.onboardable(isOnboardable, title: title, labels: builder(), terms: terms)
	}
}
