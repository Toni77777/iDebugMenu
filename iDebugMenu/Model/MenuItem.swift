//
//  MenuItem.swift
//  iDebugMenu
//
//  Created by Anton Paliakou on 8/15/21.
//

import Foundation

enum MenuItem {
    case console
    case network
    case actions
    
    var title: String {
        switch self {
        case .console: return "Console"
        case .network: return "Network"
        case .actions: return "Custom Actions"
        }
    }
}

// MARK: - CaseIterable

extension MenuItem: CaseIterable {
}

// MARK: - Identifiable

extension MenuItem: Identifiable {
    var id: Self { self }
}
