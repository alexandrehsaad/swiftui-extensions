// Color+.swift
// ArithmeticsTests
//
// Copyright © 2021 Alexandre H. Saad
// Licensed under Apache License v2.0 with Runtime Library Exception
//

import SwiftUI
import XCTest
@testable import SwiftUIExtensions

extension Color_Tests {
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
	
	// TODO: InitializedWithHex
	func test_InitializedWithHex_Fails() {
		
	}
}
