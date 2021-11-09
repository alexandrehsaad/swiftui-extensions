// Image+.swift
// SwiftUIX
//
// Copyright © 2021 Alexandre H. Saad
//

import SwiftUI

extension Image {
	/// Creates a new instance with the specified file name and type.
	///
	/// - Parameters:
	///   - name: The name of the file.
	///   - type: The type of the file.
	public init(name: String, type: String) {
		#if canImport(UIKit)
		typealias Content = UIImage
		#elseif canImport(AppKit)
		typealias Content = NSImage
		#endif
		
		guard let path = Bundle.main.path(forResource: name, ofType: type),
			  let image: Content = .init(contentsOfFile: path) else {
			self.init(name)
			return
		}
		
		#if canImport(UIKit)
		self.init(uiImage: image)
		#elseif canImport(AppKit)
		self.init(nsImage: image)
		#else
		self.init(name)
		#endif
	}
}
