// View+Debug.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

extension View {
	/// Performs the specified action if in debug.
	///
	/// - parameter action: The action to perform while in debug.
	/// - returns: This view unmodified.
	public func ifDebug(perform action: () -> Void) -> Self {
		#if DEBUG
		action()
		#endif
		
		return self
	}
}
