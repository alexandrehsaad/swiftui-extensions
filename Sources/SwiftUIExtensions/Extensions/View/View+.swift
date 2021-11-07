// View+.swift
// SwiftUIExtensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

extension View {
	/// Positions this view within an invisible frame with the specified size.
	///
	/// - Parameters:
	///   - lenths: A fixed width and height for the resulting view.
	///   If is `nil`, the resulting view assumes this view's sizing behavior.
	///   - alignment: The alignment of this view inside the resulting view.
	///   Only  applies if this view is smaller than the size given by the resulting frame.
	/// - Returns: A view with fixed dimensions.
	public func frame(
		lengths: CGFloat? = nil,
		alignment: Alignment = .center
	) -> some View {
		self.frame(
			width: length,
			height: length,
			alignment: alignment
		)
	}
	
	/// Positions this view within an invisible frame having the specified size constraints.
	///
	/// - Parameters:
	///   - minLengths: The minimum lengths of the resulting frame.
	///   - idealLengths: The ideal lengths of the resulting frame.
	///   - maxLengths: The maximum lengths of the resulting frame.
	///   - alignment: The alignment of this view inside the resulting view.
	///   Only  applies if this view is smaller than the size given by the resulting frame.
	/// - Returns: A view with fixed dimensions.
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
	/// - Parameter isEnabled: A boolean value.
	/// - Returns: This view enabled or disabled.
	public func enabled(_ isEnabled: Bool) -> some View {
		return self
			.disabled(isEnabled == false)
	}
	
	/// Adds a condition that controls whether this view is hidden.
	///
	/// - Parameter isHidden: A boolean value.
	/// - Returns: This view hidding or showing.
	public func hidden(_ isHidden: Bool) -> some View {
		return self
			.opacity(isHidden ? 0 : 1)
			.allowsHitTesting(isHidden == false)
	}
	
	/// Adds a condition that controls whether this view is shown.
	///
	/// - Parameter isShown: A boolean value.
	/// - Returns: This view showing or hidding.
	public func shown(_ isShown: Bool) -> some View {
		return self
			.opacity(isShown ? 1 : 0)
			.allowsHitTesting(isShown == true)
	}
	
	/// Minimizes this view.
	///
	/// - Parameter isMinimized: A boolean value.
	/// - Returns: This view showing or hidding.
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
}

extension View {
	/// Performs the specified action if in debug.
	///
	/// - Parameter action: The action to perform while in debug.
	/// - Returns: This view unmodified.
	public func ifDebug(perform action: () -> Void) -> Self {
		#if DEBUG
		action()
		#endif
		
		return self
	}
}
