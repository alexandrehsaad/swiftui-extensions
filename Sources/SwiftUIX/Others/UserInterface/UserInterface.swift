// UserInterface.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

/// A representation of a user interface.
public enum UserInterface {
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
	
	/// The style of interface to use on the current device.
	public static var current: Self {
		#if targetEnvironment(macCatalyst)
		return .mac
		#elseif os(iOS)
		switch UIDevice.current.userInterfaceIdiom {
		case .carPlay:
			return .carPlay
		case .pad:
			return .pad
		case .phone:
			return .phone
		default:
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
