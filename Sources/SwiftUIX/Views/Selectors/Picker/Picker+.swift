// Picker+.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

extension Picker
where Content == AnyView,
	  Label == Text,
	  SelectionValue: CaseIterable & CustomStringConvertible & Hashable,
	  SelectionValue.AllCases: RandomAccessCollection {
	/// Creates a new instance with the specified title key and selection.
	///
	/// - Parameters:
	///   - titleKey: The title key.
	///   - selection: The selection.
	public init(_ titleKey: LocalizedStringKey, selection: Binding<SelectionValue>) {
		self.init(titleKey, selection: selection) {
			return AnyView(
				ForEach(SelectionValue.allCases, id: \.self) { (value) in
					Text(value.description)
						.tag(value)
				}
			)
		}
	}
	
	/// Creates a new instance with the specified title and selection.
	///
	/// - Parameters:
	///   - title: The title.
	///   - selection: The selection.
	public init<S>(_ title: S, selection: Binding<SelectionValue>)
	where S: StringProtocol {
		self.init(title, selection: selection) {
			return AnyView(
				ForEach(SelectionValue.allCases, id: \.self) { (value) in
					Text(value.description)
						.tag(value)
				}
			)
		}
	}
}
