// SidebarButton.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of a sidebar button.
@available(macOS 15, *)
struct SidebarButton {
	/// Creates a new instance.
	init() {}
	
	/// Toggles the sidebar.
	private func toggleSidebar() {
		#if os(macOS)
		NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
		#endif
	}
}

// MARK: - View

@available(macOS 15, *)
extension SidebarButton: View {
	var body: some View {
		return Button {
			self.toggleSidebar()
		} label: {
			Image(systemName: "sidebar.leading")
		}
	}
}
