// View+.swift
// SwiftUIExtensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

extension View {
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
