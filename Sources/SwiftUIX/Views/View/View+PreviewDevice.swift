// View+PreviewDevice.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension View {
	/// Overrides the devices for a preview.
	///
	/// - parameter devices: The devices to preview.
	/// - returns: The Xcode preview canvas.
	public func previewDevices(_ devices: [PreviewDevice]) -> some View {
		return ForEach(devices, id: \.rawValue) { (device) in
			self.previewDevice(device)
		}
	}
}
