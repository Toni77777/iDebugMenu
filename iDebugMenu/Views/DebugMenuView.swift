//
//  DebugMenuView.swift
//  iDebugMenu
//
//  Created by Anton Paliakou on 8/15/21.
//

import SwiftUI

struct DebugMenuView: View {
    
    // MARK: - Properties
    
    let menuItems = MenuItem.allCases
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List(menuItems) { item in
                NavigationLink(destination: menuDetailView(item)) {
                    MenuView(title: item.title)
                }
            }
            .navigationBarTitle("Debug Menu")
        }
    }
    
    @ViewBuilder
    private func menuDetailView(_ menuItem: MenuItem) -> some View {
        switch menuItem {
        case .console: ConsoleView()
        case .network: NetworkView()
        case .actions: CustomActionsView()
        }
    }
}

struct DebugMenuView_Previews: PreviewProvider {
    
    static var previews: some View {
        DebugMenuView()
    }
}
