// RoundedCorners.swift
// SwiftUIExtensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of rounded corners.
struct RoundedCorners {
	/// The bottom leading corner of the view.
	var bottomLeading: CGFloat = 0
	
	/// The bottom trailing corner of the view.
	var bottomTrailing: CGFloat = 0
	
	/// The top leading corner of the view.
	var topLeading: CGFloat = 0
	
	/// The top trailing corner of the view.
	var topTrailing: CGFloat = 0
	
	/// Creates a new instance with the specified corner and radius.
	///
	/// - Parameters:
	/// 	- corner: The corner.
	/// 	- radius: The corner radius.
	init(_ corner: Corner, _ radius: CGFloat) {
		switch corner {
		case .bottomLeading:
			self.bottomLeading = radius
		case .bottomTrailing:
			self.bottomTrailing = radius
		case .topLeading:
			self.topLeading = radius
		case .topTrailing:
			self.topTrailing = radius
		}
	}
	
	/// Creates a new instance with the specified corner group and radius.
	///
	/// - Parameters:
	/// 	- group: The corner group.
	/// 	- radius: The corner radius.
	init(_ group: CornerGroup, _ radius: CGFloat) {
		for corner in group.corners {
			switch corner {
			case .bottomLeading:
				self.bottomLeading = radius
			case .bottomTrailing:
				self.bottomTrailing = radius
			case .topLeading:
				self.topLeading = radius
			case .topTrailing:
				self.topTrailing = radius
			}
		}
	}
}
