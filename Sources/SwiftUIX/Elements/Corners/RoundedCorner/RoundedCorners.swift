// RoundedCorners.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

/// A representation of rounded corners.
internal struct RoundedCorners {
	/// The bottom leading corner of the view.
	internal var bottomLeading: CGFloat = 0
	
	/// The bottom trailing corner of the view.
	internal var bottomTrailing: CGFloat = 0
	
	/// The top leading corner of the view.
	internal var topLeading: CGFloat = 0
	
	/// The top trailing corner of the view.
	internal var topTrailing: CGFloat = 0
	
	/// Creates a new instance with the specified corner and radius.
	///
	/// - parameter corner: The corner.
	/// - parameter radius: The corner radius.
	internal init(_ corner: Corner, _ radius: CGFloat) {
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
	/// - parameter group: The corner group.
	/// - parameter radius: The corner radius.
	internal init(_ group: CornerGroup, _ radius: CGFloat) {
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
