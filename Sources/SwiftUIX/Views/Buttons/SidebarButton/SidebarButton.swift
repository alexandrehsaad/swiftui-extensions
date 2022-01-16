// SidebarButton.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of a sidebar button.
@available(macOS 12, *)
public struct SidebarButton {
	/// Creates a new instance.
	public init() {}
	
	/// Toggles the sidebar.
	private func toggleSidebar() {
		#if os(macOS)
		NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
		#endif
	}
}

// MARK: - View

@available(macOS 12, *)
extension SidebarButton: View {
	public var body: some View {
		return Button {
			self.toggleSidebar()
		} label: {
			Label {
				// TODO: localize
				Text("Toggle Sidebar")
			} icon: {
				Image(systemName: "sidebar.leading")
			}
		}
	}
}
