// View+RoundedCorners.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

extension View {
	/// Clips this view to its bounding frame, with the specified corner radius.
	///
	/// - parameter corner: The corner to clip.
	/// - parameter radius: The amount of radius to clip.
	/// - returns: A view that clips this view to its bounding frame with the specified corner radius.
	public func cornerRadius(_ corner: Corner, _ radius: CGFloat) -> some View {
		return self.clipShape(RoundedCorners(corner, radius))
	}
	
	/// Clips this view to its bounding frame, with the specified corner group radius.
	///
	/// - parameter corner: The corners to clip.
	/// - parameter radius: The amount of radius to clip.
	/// - returns: A view that clips this view to its bounding frame with the specified corner radius.
	public func cornerRadius(_ corners: CornerGroup, _ radius: CGFloat) -> some View {
		return self.clipShape(RoundedCorners(corners, radius))
	}
}
