// Line.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

// TODO: line
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
