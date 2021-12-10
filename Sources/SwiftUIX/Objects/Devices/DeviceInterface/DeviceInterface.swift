// DeviceInterface.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of a device interface.
public enum DeviceInterface {
	/// An interface designed for an in-car experience.
	case carPlay
	
	/// An interface designed for Mac.
	case mac
	
	/// An interface designed for iPad.
	case pad
	
	/// An interface designed for iPhone and iPod touch.
	case phone
	
	/// An interface designed for Apple TV.
	case tv
	
	/// An unknown interface.
	case unknown
	
	/// An interface designed for Apple Watch.
	case watch
	
	/// The current device interface.
	public static var current: Self {
		#if targetEnvironment(macCatalyst)
		return .mac
		#elseif os(iOS)
		if UIDevice.current.userInterfaceIdiom == .carPlay {
			return .carPlay
		} else if UIDevice.current.userInterfaceIdiom == .mac {
			return .mac
		} else if UIDevice.current.userInterfaceIdiom == .pad {
			return .pad
		} else if UIDevice.current.userInterfaceIdiom == .phone {
			return .phone
		} else if UIDevice.current.userInterfaceIdiom == .tv {
			return .tv
		} else {
			return .unknown
		}
		#elseif os(macOS)
		return .mac
		#elseif os(tvOS)
		return .tv
		#elseif os(watchOS)
		return .watch
		#else
		return .unknown
		#endif
	}
}
