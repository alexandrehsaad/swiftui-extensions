// View+.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

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
	
	/// Adds a condition that controls whether this view is interactable.
	///
	/// - parameter isEnabled: A boolean value.
	/// - returns: This view enabled or disabled.
	public func enabled(_ isEnabled: Bool) -> some View {
		return self
			.disabled(isEnabled == false)
	}
	
	/// Adds a condition that controls whether this view is hidden.
	///
	/// - parameter isHidden: A boolean value.
	/// - returns: This view hidding or showing.
	public func hidden(_ isHidden: Bool) -> some View {
		return self
			.opacity(isHidden ? 0 : 1)
			.allowsHitTesting(isHidden == false)
	}
	
	/// Adds a condition that controls whether this view is shown.
	///
	/// - parameter isShown: A boolean value.
	/// - returns: This view showing or hidding.
	public func shown(_ isShown: Bool) -> some View {
		return self
			.opacity(isShown ? 1 : 0)
			.allowsHitTesting(isShown == true)
	}
	
	/// Adds a condition that controls whether this view is minimized.
	///
	/// - parameter isMinimized: A boolean value.
	/// - returns: This view minimized or not.
	public func minimized(_ isMinimized: Bool) -> some View {
		return VStack(alignment: .center, spacing: .zero) {
			ZStack(alignment: .top) {
				self
					.fixedSize(horizontal: false, vertical: true)
					.frame(height: isMinimized ? 0 : .none, alignment: .top)
			}
		}
		.clipped()
	}
	
	/// Adds a condition that controls whether this view is discarded.
	///
	/// - parameter isRemoved: A boolean value.
	/// - returns: This view discarded or not.
	@ViewBuilder
	public func discarded(_ isDiscarded: Bool) -> some View {
		if isDiscarded {
			EmptyView()
		} else {
			self
		}
	}
}

extension View {
	/// Performs the specified action if in debug.
	///
	/// - parameter action: The action to perform while in debug.
	/// - returns: This view unmodified.
	public func ifDebug(perform action: () -> Void) -> Self {
		#if DEBUG
		action()
		#endif
		
		return self
	}
}
