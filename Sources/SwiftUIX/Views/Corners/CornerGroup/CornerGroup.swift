// CornerGroup.swift
// SwiftUIX
//
// Copyright © 2021-2022 Alexandre H. Saad
// Licensed under the MIT License
//

/// A representation of a group of corners.
@frozen
public enum CornerGroup {
	/// All corners.
	case all
	
	/// All corners excluding the bottom leading.
	case allButBottomLeading
	
	/// All corners excluding the bottom trailing.
	case allButBottomTrailing
	
	/// All corners excluding the top leading.
	case allButTopLeading
	
	/// All corners excluding the top trailing.
	case allButTopTrailing
	
	/// The corners on the anti diagonal.
	case antiDiagonal
	
	/// The bottom corners.
	case bottom
	
	/// The leading corners.
	case leading
	
	/// The corners on the main diagonal.
	case mainDiagonal
	
	/// The top corners.
	case top
	
	/// The trailing corners.
	case trailing
	
	/// No corners.
	case none
}

extension CornerGroup {
	/// The corners contained in the group.
	var corners: Set<Corner> {
		switch self {
		case .all:
			return .init(Corner.allCases)
		case .allButBottomLeading:
			return Self.all.corners.subtracting([.bottomLeading])
		case .allButBottomTrailing:
			return Self.all.corners.subtracting([.bottomTrailing])
		case .allButTopLeading:
			return Self.all.corners.subtracting([.topLeading])
		case .allButTopTrailing:
			return Self.all.corners.subtracting([.topTrailing])
		case .antiDiagonal:
			return [.topTrailing, .bottomLeading]
		case .bottom:
			return [.bottomLeading, .bottomTrailing]
		case .leading:
			return [.topLeading, .bottomLeading]
		case .mainDiagonal:
			return [.topLeading, .bottomTrailing]
		case .top:
			return [.topLeading, .topTrailing]
		case .trailing:
			return [.topTrailing, .bottomTrailing]
		case .none:
			return []
		}
	}
}
