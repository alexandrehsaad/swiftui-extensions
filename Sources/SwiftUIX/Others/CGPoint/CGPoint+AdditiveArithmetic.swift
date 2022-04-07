// CGPoint+AdditiveArithmetic.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

#if canImport(CoreGraphics)
import CoreGraphics

extension CGPoint: AdditiveArithmetic {
	public static func + (lhs: Self, rhs: Self) -> Self {
		let x: CGFloat = lhs.x + rhs.x
		let y: CGFloat = lhs.y + rhs.y
		
		return .init(x: x, y: y)
	}

	public static func += (lhs: inout Self, rhs: Self) {
		lhs = lhs + rhs
	}

	public static func - (lhs: Self, rhs: Self) -> Self {
		let x: CGFloat = lhs.x - rhs.x
		let y: CGFloat = lhs.y - rhs.y
		
		return .init(x: x, y: y)
	}

	public static func -= (lhs: inout Self, rhs: Self) {
		lhs = lhs - rhs
	}
}
#endif
