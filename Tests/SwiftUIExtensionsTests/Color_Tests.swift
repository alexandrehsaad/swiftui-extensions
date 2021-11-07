// Color_Tests.swift
// SwiftUIExtensionsTests
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

import SwiftUI
import XCTest
@testable import SwiftUIExtensions

final class Color_Tests: XCTestCase {
	func test_InitializedWithHex_Succeeds() {
		// Given
		let red: Color = .init(red: 1, green: 0, blue: 0)
		let hex3: Color? = .init(hex: "F00")
		let hex3H: Color? = .init(hex: "#F00")
		let hex6: Color? = .init(hex: "FF0000")
		let hex6H: Color? = .init(hex: "#FF0000")
		
		// Then
		XCTAssertEqual(red, hex3)
		XCTAssertEqual(red, hex3H)
		XCTAssertEqual(red, hex6)
		XCTAssertEqual(red, hex6H)
	}
	
	func test_Values_Succeeds() {
		// Given
		let red: Color = .init(red: 1, green: 0, blue: 0)
		
		// Then
		XCTAssertEqual(red.values!.red, 255)
		XCTAssertEqual(red.values!.green, 0)
		XCTAssertEqual(red.values!.blue, 0)
		XCTAssertEqual(red.values!.alpha, 100)
	}
}
