// EdgeInsets+.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension EdgeInsets {
	/// The horizontal insets.
	public var horizontal: CGFloat {
		return self.leading + self.trailing
	}
	
	/// The vertical insets.
	public var vertical: CGFloat {
		return self.top + self.bottom
	}
}
