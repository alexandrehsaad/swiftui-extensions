// View+FrameLengths.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension View {
	/// Positions this view within an invisible frame with the specified size.
	///
	/// - parameter lenths: A fixed width and height for the resulting view.
	///   If is `nil`, the resulting view assumes this view's sizing behavior.
	/// - parameter alignment: The alignment of this view inside the resulting view.
	///   Only  applies if this view is smaller than the size given by the resulting frame.
	/// - returns: A view with fixed dimensions.
	public func frame(
		lengths: CGFloat? = nil,
		alignment: Alignment = .center
	) -> some View {
		self.frame(
			width: lengths,
			height: lengths,
			alignment: alignment
		)
	}
	
	/// Positions this view within an invisible frame having the specified size constraints.
	///
	/// - parameter minLengths: The minimum lengths of the resulting frame.
	/// - parameter idealLengths: The ideal lengths of the resulting frame.
	/// - parameter maxLengths: The maximum lengths of the resulting frame.
	/// - parameter alignment: The alignment of this view inside the resulting view.
	///   Only  applies if this view is smaller than the size given by the resulting frame.
	/// - returns: A view with fixed dimensions.
	public func frame(
		minLengths: CGFloat? = nil,
		idealLengths: CGFloat? = nil,
		maxLengths: CGFloat? = nil,
		alignment: Alignment = .center
	) -> some View {
		self.frame(
			minWidth: minLengths,
			idealWidth: idealLengths,
			maxWidth: maxLengths,
			minHeight: minLengths,
			idealHeight: idealLengths,
			maxHeight: maxLengths,
			alignment: alignment
		)
	}
}
