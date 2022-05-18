// Chart+View.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

extension Chart: View {
	public var body: some View {
		return self.chartStyle.makeBody(configuration: self.configuration)
	}
}
