// AppleDevice.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

// TODO: Add Apple Tvs and iPads.
/// A representation of an Apple device.
///
/// ```
/// xcrun simctl list devicetypes
/// ```
///
/// - Note: You can get a list of supported devices by using the `xcrun` command in the Terminal app:
public enum AppleDevice {
	/// An Apple watch.
	@available(*, deprecated)
	case appleWatch1_38mm
	
	/// An Apple watch.
	@available(*, deprecated)
	case appleWatch1_42mm
	
	/// An Apple watch.
	@available(*, deprecated)
	case appleWatch2_38mm
	
	/// An Apple watch.
	@available(*, deprecated)
	case appleWatch2_42mm
	
	/// An Apple watch.
	case appleWatch3_38mm
	
	/// An Apple watch.
	case appleWatch3_42mm
	
	/// An Apple watch.
	@available(*, deprecated)
	case appleWatch4_40mm
	
	/// An Apple watch.
	@available(*, deprecated)
	case appleWatch4_44mm
	
	/// An Apple watch.
	@available(*, deprecated)
	case appleWatch5_40mm
	
	/// An Apple watch.
	@available(*, deprecated)
	case appleWatch5_44mm
	
	/// An Apple watch.
	case appleWatchSE_40mm
	
	/// An Apple watch.
	case appleWatchSE_44mm
	
	/// An Apple watch.
	@available(*, deprecated)
	case appleWatch6_40mm
	
	/// An Apple watch.
	@available(*, deprecated)
	case appleWatch6_44mm
	
	/// An Apple watch.
	case appleWatch7_41mm
	
	/// An Apple watch.
	case appleWatch7_45mm
	
	/// An iPod Touch.
	@available(*, deprecated)
	case iPodTouch7
	
	/// An iPhone.
	@available(*, deprecated)
	case iPhone4S
	
	/// An iPhone.
	@available(*, deprecated)
	case iPhone5
	
	/// An iPhone.
	@available(*, deprecated)
	case iPhone5S
	
	/// An iPhone.
	@available(*, deprecated)
	case iPhoneSE
	
	/// An iPhone.
	@available(*, deprecated)
	case iPhone6Plus
	
	/// An iPhone.
	@available(*, deprecated)
	case iPhone6
	
	/// An iPhone.
	@available(*, deprecated)
	case iPhone6S
	
	/// An iPhone.
	@available(*, deprecated)
	case iPhone6SPlus
	
	/// An iPhone.
	@available(*, deprecated)
	case iPhone7
	
	/// An iPhone.
	@available(*, deprecated)
	case iPhone7Plus
	
	/// An iPhone.
	@available(*, deprecated)
	case iPhone8
	
	/// An iPhone.
	@available(*, deprecated)
	case iPhone8Plus
	
	/// An iPhone.
	case iPhoneSE2
	
	/// An iPhone.
	@available(*, deprecated)
	case iPhoneX
	
	/// An iPhone.
	@available(*, deprecated)
	case iPhoneXS
	
	/// An iPhone.
	@available(*, deprecated)
	case iPhoneXSMax
	
	/// An iPhone.
	@available(*, deprecated)
	case iPhoneXR
	
	/// An iPhone.
	case iPhone11
	
	/// An iPhone.
	case iPhone11Pro
	
	/// An iPhone.
	case iPhone11ProMax
	
	/// An iPhone.
	case iPhone12Mini
	
	/// An iPhone.
	case iPhone12
	
	/// An iPhone.
	case iPhone12Pro
	
	/// An iPhone.
	case iPhone12ProMax
	
	/// An iPhone.
	case iPhone13Mini
	
	/// An iPhone.
	case iPhone13
	
	/// An iPhone.
	case iPhone13Pro
	
	/// An iPhone.
	case iPhone13ProMax
}
