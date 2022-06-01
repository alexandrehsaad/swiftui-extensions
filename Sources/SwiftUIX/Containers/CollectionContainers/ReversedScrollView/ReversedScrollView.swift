// ReversedScrollView.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

/// A representation of a reversed scroll view.
public struct ReversedScrollView<Content>
where Content: View {
	/// The scrolling axis.
	internal var axis: Axis.Set
	
	/// A boolean value indicating whether the indicators are showing.
	internal var showsIndicators: Bool
	
	/// The content of this view.
	internal var content: Content
	
	/// Creates a new instance that's scrollable in the direction of the given axis and can show indicators while scrolling.
	///
	/// - parameter axes: The scroll view's scrollable axis.
	/// - parameter showsIndicators: A Boolean value indicating whether the scroll view displays the scrollable component of the content offset.
	/// - parameter content: The view builder that creates the scrollable view.
	public init(
		_ axis: Axis.Set = .vertical,
		showsIndicators: Bool,
		@ViewBuilder content: @escaping () -> Content
	) {
		self.axis = axis
		self.showsIndicators = showsIndicators
		self.content = content()
	}
	
	/// The minimum width.
	internal func minWidth(in proxy: GeometryProxy, for axis: Axis.Set) -> CGFloat? {
		return axis.contains(.horizontal) ? proxy.size.width : nil
	}
	
	/// The minimum height.
	internal func minHeight(in proxy: GeometryProxy, for axis: Axis.Set) -> CGFloat? {
		return axis.contains(.vertical) ? proxy.size.height : nil
	}
}
