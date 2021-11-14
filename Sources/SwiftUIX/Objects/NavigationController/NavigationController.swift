// NavigationController.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import Combine

/// A representation of a navigation controller.
public class NavigationController<Tag>: ObservableObject
where Tag: Hashable {
	/// Creates a new instance.
	public init() {}
	
	/// The selected tagged navigation link.
	@Published
	public var selected: Tag? = nil
	
	/// A boolean value indicating whether the navigation stack is at its root.
	public var isRoot: Bool {
		return self.selected == nil
	}
	
	/// Pops the navigation stack to its root.
	public func popToRoot() {
		self.selected = nil
	}
}
