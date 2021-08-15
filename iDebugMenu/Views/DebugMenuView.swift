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
                MenuView(title: item.title)
            }
        }
        .navigationBarTitle("Debug Menu")
    }
}

struct DebugMenuView_Previews: PreviewProvider {
    
    static var previews: some View {
        DebugMenuView()
    }
}
