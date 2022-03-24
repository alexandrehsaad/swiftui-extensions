// EdgeInsets+.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

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
