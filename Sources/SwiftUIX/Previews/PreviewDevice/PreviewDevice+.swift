// PreviewDevice+.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

extension PreviewDevice {
	/// Creates a new instance with the specified Apple device.
	///
	///  - Parameter device: The device to use for the new instance.
	public init(_ device: AppleDevice) {
		self.init(rawValue: device.description)
	}
}
