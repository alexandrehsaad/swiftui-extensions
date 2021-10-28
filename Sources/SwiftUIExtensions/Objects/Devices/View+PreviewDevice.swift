// View+PreviewDevice.swift
// SwiftUIExtensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

extension View {
	/// Overrides the device for a preview.
	///
	/// - Parameter device: The device to preview.
	/// - Returns: The Xcode preview canvas.
	public func previewDevice(_ device: PreviewDevice) -> some View {
		let device: PreviewDevice? = .init(device)
		return self.previewDevice(device)
	}
	
	/// Overrides the devices for a preview.
	///
	/// - Parameter devices: The devices to preview.
	/// - Returns: The Xcode preview canvas.
	public func previewDevices(_ devices: [PreviewDevice]) -> some View {
		return ForEach(devices, id: \.rawValue) { (device) in
			self.previewDevice(device)
		}
	}
}
