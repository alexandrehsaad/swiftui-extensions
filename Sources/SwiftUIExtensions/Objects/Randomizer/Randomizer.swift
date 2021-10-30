// Randomizer.swift
// SwiftUIExtensions
//
// Copyright © 2021 Alexandre H. Saad
//

import Combine
import SwiftUI

/// A representation of a view with random data.
public struct Randomizer<Data, Content>
where Data: Hashable, Content: View {
	/// The data of this view.
	private let data: Set<Data>
	
	/// The content of this view.
	private let content: (Data?) -> Content
	
	/// The timer.
	private let timer: Publishers.Autoconnect<Timer.TimerPublisher>

	/// Creates a new randomizer.
	///
	/// - Parameters:
	/// 	- data: The set of data.
	/// 	- timeInterval: The time interval data updates.
	/// 	- content: The content of this view.
	public init(
		_ data: Set<Data>,
		every timeInterval: TimeInterval = 1,
		@ViewBuilder content: @escaping (Data?) -> Content
	) {
		self.data = data
		self.content = content
		
		self.timer = Timer
			.publish(every: timeInterval, tolerance: 0.1, on: .main, in: .common)
			.autoconnect()
	}
	
	/// The random data of this view.
	@State
	private var randomData: Data? = nil
}

extension Randomizer: View {
	public var body: some View {
		return self.content(self.randomData)
			.onAppear {
				self.randomData = self.data.randomElement()
			}
			.onReceive(self.timer) { _ in
				self.randomData = self.data.randomElement()
			}
	}
}
