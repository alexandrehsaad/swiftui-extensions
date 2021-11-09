// View+PreviewDevice.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

extension View {
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
