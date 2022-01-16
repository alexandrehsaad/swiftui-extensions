// CGPoint+AdditiveArithmetic.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
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
