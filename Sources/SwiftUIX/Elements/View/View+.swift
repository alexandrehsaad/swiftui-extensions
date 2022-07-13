// View+.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension View {
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
	
	/// Adds a condition that controls whether this view is flashing.
	///
	/// - parameter isFlashing: A boolean value.
	/// - returns: This view flashing or not.
	public func flashing(_ isFlashing: Bool) -> some View {
		return self
			.modifier(Flasher(isFlashing))
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
