// OnboardingView+View.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

@available(iOS 15, watchOS 8, *)
extension OnboardingView: View {
	public var body: some View {
		return self.onboardingStyle
			.makeBody(configuration: self.configuration)
			.navigationViewStyle(.stack)
			.navigationTitle("")
			.navigationBarTitleDisplayMode(.inline)
			.navigationBarHidden(true)
			.navigationBarBackButtonHidden(true)
			.edgesIgnoringSafeArea(.top)
	}
}
