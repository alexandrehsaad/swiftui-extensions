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
	init() {}
	
	/// The selected tagged navigation link.
	@Published
	public var selected: Tag? = nil
	
	/// A boolean value indicating whether the navigation stack is at its root.
	@Published
	public var isRoot: Bool {
		return self.tag == nil
	}
	
	/// Pops the navigation stack to its root.
	public func popToRoot() {
		self.tag = nil
	}
}
