// FullWidthButtonStyle+ButtonStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension FullWidthButtonStyle: ButtonStyle {
	public func makeBody(configuration: Self.Configuration) -> some View {
		configuration.label
			.font(.headline.bold())
			.padding(.vertical, 16)
			.frame(maxWidth: .infinity)
			.overlay(configuration.isPressed ? Color.white.opacity(0.2) : .clear)
			.foregroundColor(.white)
			.background(Color.accentColor)
			.cornerRadius(12)
	}
}
