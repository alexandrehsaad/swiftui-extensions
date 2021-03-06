// Picker+.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension Picker
where Content == AnyView,
	  Label == Text,
	  SelectionValue: CaseIterable & CustomStringConvertible & Hashable,
	  SelectionValue.AllCases: RandomAccessCollection {
	/// Creates a new instance with the specified title key and selection.
	///
	/// - parameter titleKey: The title key.
	/// - parameter selection: The selection.
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
	/// - parameter title: The title.
	/// - parameter selection: The selection.
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
