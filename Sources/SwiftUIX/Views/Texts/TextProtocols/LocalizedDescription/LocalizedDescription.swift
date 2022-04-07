// LocalizedDescription.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

/// A type with a customized textual representation suitable for localizing purposes.
public protocol LocalizedDescription {
	/// A textual representation of this instance, suitable for localizing.
	var localizedDescription: LocalizedStringKey { get }
}
