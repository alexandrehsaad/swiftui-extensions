// ColorTests.swift
// SwiftUIXTests
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI
import XCTest
@testable import SwiftUIX

final class ColorTests: XCTestCase {
	func testInitializedWithHexSucceeds() {
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
	
	func testValuesSucceeds() {
		// Given
		let red: Color = .init(red: 1, green: 0, blue: 0)
		
		// Then
		XCTAssertEqual(red.values.red, 255)
		XCTAssertEqual(red.values.green, 0)
		XCTAssertEqual(red.values.blue, 0)
		XCTAssertEqual(red.values.alpha, 100)
	}
	
	func testComplementarySucceeds() {
		// Given
		let white: Color = .white
		
		// Given
		let black: Color = white.complementary
		
		// Then
		XCTAssertEqual(black.values.red, 0)
		XCTAssertEqual(black.values.green, 0)
		XCTAssertEqual(black.values.blue, 0)
		XCTAssertEqual(black.values.alpha, 100)
	}
}
