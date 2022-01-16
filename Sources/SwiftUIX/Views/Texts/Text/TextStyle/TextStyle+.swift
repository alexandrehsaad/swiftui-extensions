// TextStyle+.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

extension Font.TextStyle {
	/// The default leading used by this text style.
	public var defaultLeading: CGFloat? {
		switch self {
		case .largeTitle:
			return 41
		case .title:
			return 34
		case .headline:
			return 22
		case .body:
			return 22
		case .callout:
			return 21
		case .subheadline:
			return 20
		case .footnote:
			return 18
		case .caption:
			return 16
		default:
			if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
				switch self {
				case .title2:
					return 28
				case .title3:
					return 25
				case .caption2:
					return 13
				default:
					return nil
				}
			} else {
				return nil
			}
		}
	}
	
	/// The default size used by this text style.
	public var defaultSize: CGFloat? {
		switch self {
		case .largeTitle:
			return 34
		case .title:
			return 28
		case .headline:
			return 17
		case .body:
			return 17
		case .callout:
			return 16
		case .subheadline:
			return 15
		case .footnote:
			return 13
		case .caption:
			return 12
		default:
			if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
				switch self {
				case .title2:
					return 22
				case .title3:
					return 20
				case .caption2:
					return 11
				default:
					return nil
				}
			} else {
				return nil
			}
		}
	}
	
	/// The default weight used by this text style.
	public var defaultWeight: Font.Weight? {
		switch self {
		case .largeTitle:
			return .regular
		case .title:
			return .regular
		case .headline:
			return .semibold
		case .body:
			return .regular
		case .callout:
			return .regular
		case .subheadline:
			return .regular
		case .footnote:
			return .regular
		case .caption:
			return .regular
		default:
			if #available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *) {
				switch self {
				case .title2:
					return .regular
				case .title3:
					return .regular
				case .caption2:
					return .regular
				default:
					return nil
				}
			} else {
				return nil
			}
		}
	}
}
