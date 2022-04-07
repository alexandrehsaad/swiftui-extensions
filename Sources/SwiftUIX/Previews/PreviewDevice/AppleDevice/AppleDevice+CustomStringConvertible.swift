// AppleDevice+CustomStringConvertible.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension AppleDevice: CustomStringConvertible {
	public var description: String {
		switch self {
		case .appleWatch1_38mm:
			return "Apple Watch - 38mm"
		case .appleWatch1_42mm:
			return "Apple Watch - 42mm"
		case .appleWatch2_38mm:
			return "Apple Watch Series 2 - 38mm"
		case .appleWatch2_42mm:
			return "Apple Watch Series 2 - 42mm"
		case .appleWatch3_38mm:
			return "Apple Watch Series 3 - 38mm"
		case .appleWatch3_42mm:
			return "Apple Watch Series 3 - 42mm"
		case .appleWatch4_40mm:
			return "Apple Watch Series 4 - 40mm"
		case .appleWatch4_44mm:
			return "Apple Watch Series 4 - 44mm"
		case .appleWatch5_40mm:
			return "Apple Watch Series 5 - 40mm"
		case .appleWatch5_44mm:
			return "Apple Watch Series 5 - 44mm"
		case .appleWatchSE_40mm:
			return "Apple Watch SE - 40mm"
		case .appleWatchSE_44mm:
			return "Apple Watch SE - 44mm"
		case .appleWatch6_40mm:
			return "Apple Watch Series 6 - 40mm"
		case .appleWatch6_44mm:
			return "Apple Watch Series 6 - 44mm"
		case .appleWatch7_41mm:
			return "Apple Watch Series 7 - 41mm"
		case .appleWatch7_45mm:
			return "Apple Watch Series 7 - 45mm"
		case .iPodTouch7:
			return "iPod touch (7th generation)"
		case .iPhone4S:
			return "iPhone 4s"
		case .iPhone5:
			return "iPhone 5"
		case .iPhone5S:
			return "iPhone 5s"
		case .iPhoneSE:
			return "iPhone SE"
		case .iPhone6Plus:
			return "iPhone 6 Plus"
		case .iPhone6:
			return "iPhone 6"
		case .iPhone6S:
			return "iPhone 6s"
		case .iPhone6SPlus:
			return "iPhone 6s Plus"
		case .iPhone7:
			return "iPhone 7"
		case .iPhone7Plus:
			return "iPhone 7 Plus"
		case .iPhone8:
			return "iPhone 8"
		case .iPhone8Plus:
			return "iPhone 8 Plus"
		case .iPhoneSE2:
			return "iPhone SE (2nd generation)"
		case .iPhoneX:
			return "iPhone X"
		case .iPhoneXS:
			return "iPhone Xs"
		case .iPhoneXSMax:
			return "iPhone Xs Max"
		case .iPhoneXR:
			return "iPhone Xʀ"
		case .iPhone11:
			return "iPhone 11"
		case .iPhone11Pro:
			return "iPhone 11 Pro"
		case .iPhone11ProMax:
			return "iPhone 11 Pro Max"
		case .iPhone12Mini:
			return "iPhone 12 mini"
		case .iPhone12:
			return "iPhone 12"
		case .iPhone12Pro:
			return "iPhone 12 Pro"
		case .iPhone12ProMax:
			return "iPhone 12 Pro Max"
		case .iPhone13Mini:
			return "iPhone 13 mini"
		case .iPhone13:
			return "iPhone 13"
		case .iPhone13Pro:
			return "iPhone 13 Pro"
		case .iPhone13ProMax:
			return "iPhone 13 Pro Max"
		}
	}
}
