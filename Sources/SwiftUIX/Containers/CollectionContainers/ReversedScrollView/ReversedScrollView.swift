// ReversedScrollView.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

/// A representation of a reversed scroll view.
public struct ReversedScrollView<Content>
where Content: View {
	/// The scrolling axis.
	private var axis: Axis.Set
	
	/// A boolean value indicating whether the indicators are showing.
	private var showsIndicators: Bool
	
	/// The content of this view.
	private var content: Content
	
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
	private func minWidth(in proxy: GeometryProxy, for axis: Axis.Set) -> CGFloat? {
		return axis.contains(.horizontal) ? proxy.size.width : nil
	}
	
	/// The minimum height.
	private func minHeight(in proxy: GeometryProxy, for axis: Axis.Set) -> CGFloat? {
		return axis.contains(.vertical) ? proxy.size.height : nil
	}
}

// MARK: - View

extension ReversedScrollView: View {
	public var body: some View {
		return GeometryReader { (geometry) in
			ScrollView(self.axis, showsIndicators: self.showsIndicators) {
				self.content
					.frame(
						minWidth: self.minWidth(in: geometry, for: self.axis),
						minHeight: self.minHeight(in: geometry, for: self.axis),
						alignment: .bottom
					)
			}
		}
	}
}
