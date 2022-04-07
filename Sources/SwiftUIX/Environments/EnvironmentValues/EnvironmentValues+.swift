// EnvironmentValues+.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

extension EnvironmentValues {
	/// A boolean value indicating whether this environment is running in a preview.
	public var isRunningInPreview: Bool {
		#if DEBUG
		return ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == "1"
		#else
		return false
		#endif
	}
	
	/// A boolean value indicating whether this environment is running in a simulator.
	public var isRunningInSimulator: Bool {
		#if targetEnvironment(simulator)
		return true
		#else
		return false
		#endif
	}
}
