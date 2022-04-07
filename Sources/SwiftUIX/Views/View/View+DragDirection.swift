// DragDirection.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

import SwiftUI

extension View {
	/// Reads the drag direction.
	public func readDragDirection(perform action: @escaping (DragDirection) -> Void) -> some View {
		return self
			.simultaneousGesture(DragGesture(minimumDistance: 1, coordinateSpace: .global)
				.onEnded { (gesture) in
					let startLocation = gesture.startLocation
					let xDist = abs(gesture.location.x - startLocation.x)
					let yDist = abs(gesture.location.y - startLocation.y)
					
					if startLocation.y < gesture.location.y && yDist > xDist {
						return action(.topDown)
					} else if startLocation.y > gesture.location.y && yDist > xDist {
						return action(.bottomUp)
					} else if startLocation.x > gesture.location.x && yDist < xDist {
						return action(.rightLeft)
					} else if startLocation.x < gesture.location.x && yDist < xDist {
						return action(.leftRight)
					}
				}
			)
	}
}
