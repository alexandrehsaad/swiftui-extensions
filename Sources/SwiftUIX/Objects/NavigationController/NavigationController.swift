// NavigationController.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import Combine

/// A representation of a navigation controller.
public final class NavigationController<Tag>: ObservableObject
where Tag: Hashable {
	/// Creates a new instance.
	public init() {}
	
	/// A boolean value indicating whether an alert is presented.
	@Published
	public var alertIsPresented: Bool = false
	
	/// A boolean value indicating whether a sheet is presented.
	@Published
	public var sheetIsPresented: Bool = false
	
	/// The selected tab.
	@Published
	public var tab: Tag? = nil
	
	/// The selected link.
	@Published
	public var link: Tag? = nil
	
	/// A boolean value indicating whether the navigation stack is at its root.
	public var isRoot: Bool {
		return self.link == nil
	}
	
	/// Pops the navigation stack to its root.
	public func popToRoot() {
		self.link = nil
	}
	
	/// Presents an alert.
	public func presentAlert() {
		self.alertIsPresented = true
	}
	
	/// Dismisses an alert.
	public func dismissAlert() {
		self.alertIsPresented = false
	}
	
	/// Presents a sheet.
	public func presentSheet() {
		self.sheetIsPresented = true
	}
	
	/// Dismisses a sheet.
	public func dismissSheet() {
		self.sheetIsPresented = false
	}
}
