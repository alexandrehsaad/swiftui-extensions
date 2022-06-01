// SidebarButton+View.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

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
