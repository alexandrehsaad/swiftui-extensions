// PreviewDevice+.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension PreviewDevice {
	/// Creates a new instance with the specified Apple device.
	///
	///  - parameter device: The device to use for the new instance.
	public init(_ device: AppleDevice) {
		self.init(rawValue: device.description)
	}
}
