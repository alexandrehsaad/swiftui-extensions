// CapsuleButtonStyle+ButtonStyle.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

@available(watchOS 8, *)
extension CapsuleButtonStyle: ButtonStyle {
	public func makeBody(configuration: Self.Configuration) -> some View {
		return configuration.label
			.font(.body)
			.foregroundColor(self.tint ?? .primary)
			.padding()
			.padding(.horizontal)
			.padding(.horizontal)
			.background(self.tint?.opacity(0.18) ?? self.defaultBackgroundColor)
			.clipShape(Capsule(style: .circular))
			.opacity(configuration.isPressed ? 0.75 : 1)
			.scaleEffect(configuration.isPressed ? 0.97 : 1, anchor: .center)
	}
}
