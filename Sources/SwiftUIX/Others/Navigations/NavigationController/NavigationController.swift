// NavigationController.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import Combine

/// A representation of a navigation controller.
public final class NavigationController<SheetTag, TabTag, LinkTag>: ObservableObject
where SheetTag: Hashable, TabTag: Hashable, LinkTag: Hashable {
	/// Creates a new instance.
	public init() {}
	
	/// A boolean value indicating whether the user is onboardable.
	@Published
	public var userIsOnboardable: Bool = false
	
	/// A boolean value indicating whether an alert is presented.
	@Published
	public var alertIsPresented: Bool = false
	
	/// A boolean value indicating whether a sheet is presented.
	@Published
	public var sheetIsPresented: Bool = false
	
	/// The focused sheet.
	@Published
	public var sheet: SheetTag? = nil
	
	/// The focused tab.
	@Published
	public var tab: TabTag? = nil
	
	/// The focused link.
	@Published
	public var link: LinkTag? = nil
	
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
