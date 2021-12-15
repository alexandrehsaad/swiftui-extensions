// Line.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

///
@available(*, unavailable)
public struct Line {}

// MARK: - Shape

@available(*, unavailable)
extension Line: Shape {
	public func path(in rect: CGRect) -> Path {
		// TODO: line
		return Path { (path) in
			path.closeSubpath()
		}
	}
}
