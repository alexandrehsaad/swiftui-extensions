// Corner.swift
// SwiftUIExtensions
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

/// A representation of a corner.
@frozen
public enum Corner: CaseIterable {
	/// The bottom leading corner.
	case bottomLeading
	
	/// The bottom trailing corner.
	case bottomTrailing
	
	/// The top leading corner.
	case topLeading
	
	/// The top trailing corner.
	case topTrailing
}
