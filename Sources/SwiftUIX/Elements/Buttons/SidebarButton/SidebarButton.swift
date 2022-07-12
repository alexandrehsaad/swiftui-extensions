// SidebarButton.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

/// A representation of a sidebar button.
@available(macOS 12, *)
public struct SidebarButton {
	/// Creates a new instance.
	public init() {}
	
	/// Toggles the sidebar.
	internal func toggleSidebar() {
		#if os(macOS)
		NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
		#endif
	}
}
